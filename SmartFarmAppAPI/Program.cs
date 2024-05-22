using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Data.Contexts;
using SmartFarmAppAPI.Data.Seeders;
using SmartFarmAppAPI.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder =>
    {
        builder.AllowAnyOrigin()
               .AllowAnyMethod()
               .AllowAnyHeader();
    });
});

builder.Services.AddDbContext<FarmDbContext>(options => 
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("FarmManagement"));
});

// Register DataSeeder
builder.Services.AddScoped<IDataSeeder, DataSeeder>();

var app = builder.Build();

// Seed the database.
using (var scope = app.Services.CreateScope())
{
    var dataSeeder = scope.ServiceProvider.GetRequiredService<IDataSeeder>();
    dataSeeder.Initialize();
}

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseCors("AllowAll");
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
