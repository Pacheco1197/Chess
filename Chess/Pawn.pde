//Pawn chess piece subclass
//Made by Chase on 4/22

public class Pawn extends Piece
{
  //Variables
  private String pieceName = "Pawn";
  private boolean firstTurn = true;


  //Constructor
  public Pawn(String c, int x, int y)
  {
    super(c, x, y, "pawn");
     
  }


  //Methods
  public String getPieceName()
  {
    //Obtain type of piece
    return pieceName;
  }

  public void move(int x, int y)
  {
     int xCordinate = getXLocation();
     int yCordinate = getYLocation();
    if (firstTurn)
    {
      if (!board.bl[xCordinate][yCordinate - 1].getHasPiece())
      {
        board.bl[xCordinate][yCordinate - 1].showPossibleMoves();
        if (!board.bl[xCordinate][yCordinate - 2].getHasPiece())
          board.bl[xCordinate][yCordinate - 2].showPossibleMoves();
      }
    }
  
  }
  
  public boolean getFirstTurn()
  {
    System.out.print("H");
    return firstTurn;
  }

  public void hasMoved()
  {
   firstTurn = false; 
  }

}//end of class
