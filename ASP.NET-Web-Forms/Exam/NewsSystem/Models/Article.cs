﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NewsSystem.Models
{
    public class Article
    {
        public Article()
        {
            this.Likes = new HashSet<Like>();
        }

        public int Id { get; set; }

        [Required]
        [MaxLength(100)]
        public string Title { get; set; }

        [Required]
        public string Content { get; set; }

        [Required]
        public int CategoryID { get; set; }

        public virtual Category Category { get; set; }

        public string AuthorId { get; set; }

        public virtual Author Author { get; set; }

        [Required]
        public DateTime DateCreated { get; set; }

        public virtual ICollection<Like> Likes { get; set; }
    }
}