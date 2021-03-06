﻿namespace BullsAndCows.Models
{
    using System.Collections.Generic;
    using System.Security.Claims;
    using System.Threading.Tasks;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;

    public class ApplicationUser : IdentityUser
    {
        private ICollection<Notification> notifications;

        public ApplicationUser()
        {
            this.UserRank = 0;            
            this.notifications = new HashSet<Notification>();
        }

        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager, string authenticationType)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, authenticationType);
            // Add custom user claims here
            return userIdentity;
        }

        public int UserRank { get; set; }

        public ICollection<Notification> Notifications
        {
            get
            {
                return this.notifications;
            }
            set
            {
                this.notifications = value;
            }
        }
    }
}
