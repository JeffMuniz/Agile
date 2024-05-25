using System;

namespace Product.Enrichment.machina.Worker.Backend.Infrastructure.ExternalServices
{
    public class machinaOptions
    {
        public Uri BaseAddress { get; set; }

        public string AccessKey { get; set; }

        public string DefaultStore { get; set; }
    }
}
