using Jogame_API.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Jogame_API.Interfaces
{
    interface IJogador
    {
        public void Adicionar();
        public void Deletar();
        public Jogador Cadastrar();
        public Jogador BuscarPorId();
        public Jogador LerTodos();
    }
}
