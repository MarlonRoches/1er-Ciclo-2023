package com.vorozco;

import com.vorozco.totito.Minimax;
import com.vorozco.totito.TotitoBoard;

import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App 
{

    private TotitoBoard board = new TotitoBoard();
    private Scanner scanner = new Scanner(System.in);

    public Integer getPlayerMove(){
        Integer move = -1;
        while (!board.getLegalMoves().contains(move)){
            System.out.println("Ingrese la casilla de totito: ");
            Integer moveInput = scanner.nextInt();
            move = moveInput;
        }
        return move;
    }

    private  void playTotito(){
        while (true){
            Integer humanMove = getPlayerMove();
            board = (TotitoBoard) board.move(humanMove);
            if (board.isWin()){
                System.out.println("Los humanos aun dominan!");
                break;
            } else if (board.isDraw()) {
                System.out.println("Maquina y hombre tienen la misma capacidad");
                break;
            }

            Integer computerMove = Minimax.findBestMove(board,9);
            System.out.println("La computadora ha decidido " + computerMove);
            board = (TotitoBoard) board.move(computerMove);
            System.out.println(board);
            if (board.isWin()){
                System.out.println("La rebelion de las maquinas a comenzado");
                break;
            } else if (board.isDraw()) {
                System.out.println("Maquina y hombre tienen la misma capacidad");
                break;
            }
        }
    }

    public static void main( String[] args )
    {
        App app = new App();
        app.playTotito();

    }
}
