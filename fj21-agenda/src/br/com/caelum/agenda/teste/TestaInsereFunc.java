package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.FuncionarioDao;
import br.com.caelum.agenda.modelo.Funcionario;

public class TestaInsereFunc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Funcionario funcionario = new Funcionario();
		funcionario.setNome("Jeferson");
		funcionario.setUsuario("jeff");
		funcionario.setSenha("123456");
		
		
		FuncionarioDao dao = new FuncionarioDao();
		dao.adiciona(funcionario);
		dao.getLista();
		
		System.out.println("Funcionario Gravado");
		
		
		
	}

}
