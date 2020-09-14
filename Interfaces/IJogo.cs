using Jogame_API.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Jogame_API.Interfaces
{
    interface IJogo
    {
        public void Adicionar();
        public void Deletar();
        public Jogo Cadastrar();
        public Jogo BuscarPorId();
        public Jogo LerTodos();
    }
}
