//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace airport
{
    using System;
    using System.Collections.Generic;
    
    public partial class All_airline_routes
    {
        public int airport { get; set; }
        public int route { get; set; }
        public int airline { get; set; }
    
        public virtual Airline Airline1 { get; set; }
        public virtual Airport Airport1 { get; set; }
        public virtual Route Route1 { get; set; }
    }
}
