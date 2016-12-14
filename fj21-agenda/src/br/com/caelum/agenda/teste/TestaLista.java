package br.com.caelum.agenda.teste;

import java.util.List;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class TestaLista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ContatoDao dao = new ContatoDao();
		
		List<Contato> contatos = dao.getLista();
		
		for (Contato contato : contatos) {
			System.out.println("Nome " + contato.getNome());
			System.out.println("Email " +contato.getEmail());
			System.out.println("Endereco " +contato.getEndereco());
			System.out.println("Data de Nascimento" +contato.getDataNascimento().getTime()+"\n");
			
		}
		
		
	}

}
