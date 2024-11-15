using Microsoft.EntityFrameworkCore;
using Nhom5_ASP_DKTQDN.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddDbContext<DKTQDNContext>(option => option.UseSqlServer(builder.Configuration.GetConnectionString("conn")));

//builder.Services.AddDefaultIdentity<ApplicationUser>(options =>
//options.SignIn.RequireConfirmedAccount = false)
//.AddEntityFrameworkStores<ApplicationDbContext>();
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

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();


app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
