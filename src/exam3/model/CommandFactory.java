package exam3.model;

public class CommandFactory {
	private CommandFactory(){}
	private static CommandFactory instance = new CommandFactory();
	public static CommandFactory newInstance(){
		return instance;
	}
	
	public Command createCommand(String cmd){
		if(cmd.equals("REGFORM")){
			return new RegFormCommand();
		}else if(cmd.equals("CONFIRM")){
			return new ConfirmCommand();
		}else if(cmd.equals("COMPLETE")){
			return new CompleteCommand();
		}else if(cmd.equals("MAIN")){
			return new MainCommand();
		}else if(cmd.equals("ZIPSEARCH")){
			return new ZipSearchCommand();
		}else{
			return null;
		}
	}
}
