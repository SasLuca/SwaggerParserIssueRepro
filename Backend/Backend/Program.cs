using FastEndpoints;
using FastEndpoints.Swagger;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddFastEndpoints().SwaggerDocument(o =>
{
    o.MaxEndpointVersion = 2;
    o.FlattenSchema = true;
    o.RemoveEmptyRequestSchema = true;
});

var app = builder.Build();
app.UseFastEndpoints().UseSwaggerGen();
app.Run();

public class Request
{
    public Int32 Data { get; set; }
    //public IFormFile File { get; set; }
}

public class Endpoint : Endpoint<Request>
{
    public override void Configure()
    {
        Post("test");
        //AllowFileUploads();
        AllowAnonymous();
    }

    public override Task HandleAsync(Request req, CancellationToken ct)
    {
        return base.HandleAsync(req, ct);
    }
}