using Jogame_API.Domains;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Jogame_API.Contexts
{
    public class JogadorContext : DbContext

    {
        public DbSet<Jogador> Jogador { get; set; }
        public DbSet<Jogo> Jogo { get; set; }
        public DbSet<JogosJogadores> JogosJogador { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
                optionsBuilder.UseSqlServer(@"Data source=.\Sqlexpress;Initial Catalog= Jogame;user id=sa; password=sa132");
            base.OnConfiguring(optionsBuilder);
        }
    }
}
