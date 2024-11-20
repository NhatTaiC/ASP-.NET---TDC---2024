using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Nhom5_ASP_DKTQDN.Models;

var builder = WebApplication.CreateBuilder(args);

//hehe
builder.Services.AddRazorPages();
// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddDbContext<DKTQDNContext>(option => option.UseSqlServer(builder.Configuration.GetConnectionString("conn")));

builder.Services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddEntityFrameworkStores<ApplicationDbContext>();


//builder.Services.AddDef
builder.Services.AddDbContext<ApplicationDbContext>(option => option.UseSqlServer(
    builder.Configuration.GetConnectionString("conn")));

builder.Services.AddIdentityCore<ApplicationUser>(options =>
options.SignIn.RequireConfirmedAccount = false)
.AddEntityFrameworkStores<ApplicationDbContext>();

var app = builder.Build();


// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}
using (var scope = app.Services.CreateScope())
{
    var services = scope.ServiceProvider;
    try
    {
        var userManager = services.GetRequiredService<UserManager<ApplicationUser>>();
        var context = services.GetRequiredService<DKTQDNContext>();

        await SeedDataAsync(context, userManager);
    }
    catch (Exception ex)
    {
        var logger = services.GetRequiredService<ILogger<Program>>();
        logger.LogError(ex, "Lỗi khi tạo dữ liệu mẫu");
    }
}
app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

//Configuring Authentication Middleware to the Request Pipeline
app.UseAuthentication();
app.UseAuthorization();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
//hehe
app.MapRazorPages();

app.Run();
static async Task SeedDataAsync(DKTQDNContext context, UserManager<ApplicationUser> userManager)
{
    var sinhvien = context.SinhViens.ToList();
    foreach (var sv in sinhvien)
    {
        var existingUser = await userManager.FindByNameAsync(sv.Email);
        if (existingUser == null)
        {
            var result = await userManager.CreateAsync(new ApplicationUser
            {
                UserName = sv.Email,
                Email = sv.Email
            }, "User@123");

            if (result.Succeeded)
            {
                Console.WriteLine($"Tạo tài khoản thành công cho sinh viên: {sv.Email}");
            }
            else
            {
                Console.WriteLine($"Không thể tạo tài khoản cho {sv.Email}: {string.Join(", ", result.Errors.Select(e => e.Description))}");
            }
        }
        else
        {
            Console.WriteLine($"Tài khoản đã tồn tại: {sv.Email}");
        }
    }
}