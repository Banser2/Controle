	/*Olha quem veio passar no Brasil, nosso maior pesquisador bruxo de criaturas mágicas Newt Scammander, ele deixou a mala encostada
	em um banco na praia de boa viagem, e um rapaz roubou achando que ia ter lucro e sem querer abriu a mala e escapou 10 animais,
	Newt obliviando o ladrão e pegando a maleta de volta começa a se preocupar e agora tem que pegar os animais de volta sem saber por onde começar,
	mas como é organizado ele tem uma lista dos animais que sairam. E agora ele pede a vocês alunos de Hogwarts para ajuda-lo,
	dando uma maleta para cada um.*/

	/*Um animalMagico tem um nome, habitat, magia, idade.*/
	/*Um bruxo tem um nome, idade e um conjunto de animais(no caso uma maleta para guardar os animais), existem dois métodos na classe Bruxo,
	addAnimal() no qual leva um animal como parametro, e o getAnimal() no qual retorna a maleta (array) dos animais que você tem. os métodos
	setNome() para definir o nome do bruxo e getNome() para retornar o nome do bruxo.*/

	/* Tanto AnimalMagico quanto Bruxo podem ter um método toString, que retorna uma String (declare como
	"public String toString" (depois vocês vão entender)), descrevendo o objeto */


public class AnimalMagico{
	String nome;
	String habitat;
	String magia;
	int idade;
}


public class Bruxo{
	String nome;
	int idade;
	AnimalMagico animais = [];

	public void addAnimal(AnimalMagico animais){
		for (int i=0; i < animais.length; i++) {
			this.animais[i] = animais;
			
		}


	}

	public String getAnimal(){
		return this.animais;
	}

	public void setNome(String nome){
		this.nome = nome;

	}

	public String getNome(){
		return this.nome;
	}

}

public class Main{
	public static void main(String[] args) {

		Bruxo harry = new Bruxo();

	}
}
