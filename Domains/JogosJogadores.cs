using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Jogame_API.Domains
{
    public class JogosJogadores : BaseDomain
    {
        [Key]
        public Guid Id { get; set; }
        public Guid IdJogo { get; set; }
        [ForeignKey("IdJogo")]
        public Jogo Jogo { get; set; }
        public Guid IdJogador { get; set; }
        [ForeignKey("IdJogador")]
        public Jogador Jogador { get; set; }
    }
}
