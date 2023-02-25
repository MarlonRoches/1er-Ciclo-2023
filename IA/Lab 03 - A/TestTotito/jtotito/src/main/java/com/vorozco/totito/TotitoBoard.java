package com.vorozco.totito;

import com.vorozco.adapter.Board;
import com.vorozco.adapter.Piece;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TotitoBoard implements Board<Integer> {

    //cantidad de casillas
    private static final int NUM_SQUARES = 9;
    //casillas como tal
    private TotitoPiece[] position;
    //indicador turno en ejecucion
    private TotitoPiece turn;

    //constructor
    public TotitoBoard(){
        position = new TotitoPiece[NUM_SQUARES];
        turn = TotitoPiece.X;  //quien empieza el primer turno
        Arrays.fill(position, TotitoPiece.E);
    }

    //constructor  - deep copy
    public TotitoBoard(TotitoPiece[] position, TotitoPiece turn){
        this.position = position;
        this.turn = turn;
    }


    @Override
    public Piece getTurn() {
        return this.turn;
    }

    @Override
    public Board<Integer> move(Integer location) {
        TotitoPiece[] tempPosition = Arrays.copyOf(position, position.length); // se hace una copia completa del tablero y se sobre escribe las piezas en el tablero
        tempPosition[location] = turn;
        return new TotitoBoard(tempPosition, turn.opposite()); //tener un tablero inmutable con cada mov se genera una copia de las casillas y se retorna que el turno del sig jugador es el opuesto   al jugador actual
    }

    @Override
    public List<Integer> getLegalMoves() {
        var legalMoves = new ArrayList<Integer>();
        for (int i = 0 ; i < position.length; i++){
            if (position[i] == TotitoPiece.E){
                legalMoves.add(i);
            }
        }
        return legalMoves;
    }

    @Override
    public boolean isWin() {
        return checkPosition(0, 1, 2) || checkPosition(3, 4, 5) || checkPosition(6, 7, 8)
                || checkPosition(0, 3, 6) || checkPosition(1, 4, 7) || checkPosition(2, 5, 8)
                || checkPosition(0, 4 ,8) || checkPosition(2, 4, 6);
    }

    private boolean checkPosition(int p0, int p1, int p2){
        return position[p0] == position[p1] && position[p1] == position[p2] && position[p0] != TotitoPiece.E;
    }

    @Override
    public double evaluate(Piece player) {
        if (isWin() && turn == player){
            return -1;
        }
        else if (isWin() && turn != player){
            return 1;
        }
        else {
            return 0.0;
        }
    }

    //toString

    public String toString(){
        StringBuilder sb = new StringBuilder();

        for (int row = 0; row < 3 ; row++){
            for (int col = 0; col < 3; col++){
                sb.append( position[row * 3 + col].toString() );
                if (col != 2){
                    sb.append("|");
                }
            }
            sb.append(System.lineSeparator());
            if (row != 2){
                sb.append("-----");
                sb.append(System.lineSeparator());
            }
        }
        return sb.toString();
    }
}
