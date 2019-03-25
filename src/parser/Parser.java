package parser;
import scanner.SchemeScanner;
import scanner.Token;

import java.util.ArrayList;

public class Parser {

	public static void main(String[] args) {
		Config config = new Config(args);
		
		//run the tokenizer,
		ArrayList<Token> tkarr;
		
		tkarr = SchemeScanner.scan(config.getIn());
		TokenIterator tki = new TokenIterator(tkarr);
		
		ParseTree pt = NonTerminal.Program.eval(tki);
		
		if(config.isColor())
			config.getOut().println(pt.color_toString());
		else 
			config.getOut().println(pt);
	}
}
