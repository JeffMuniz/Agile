﻿namespace Product.Enrichment.machina.Worker.Backend.Application.Usecases.NotifyPendingOffer.Models
{
    public class Outbound
    {
        private static readonly Outbound Empty = new();

        public static Outbound Create() =>
            Empty;
    }
}
