import { WINNER_COMBOS } from "../constants.js"

export const checkWinnerFrom = (boardToCheck) => {
    //Revisamos si todas las combinaciones ganadoras 
    //para ver si ganó X u O
    for(const combo of WINNER_COMBOS){
      const [a,b,c] = combo
      if(
        boardToCheck[a] &&
        boardToCheck[a] === boardToCheck[b] &&
        boardToCheck[a] === boardToCheck[c]
      ){
        return boardToCheck[a]
      }
    }
    //si no hay ganador
    return null
  }

  export const checkEndGame = (newBoard) => {
    //revisamos si hay un empate
    //si no hay espacios vacios
    //en el tablero
    return newBoard.every((square) => square !== null)
  }