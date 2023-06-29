'''
LAB   Sudoku
Como probablemente sabes, Sudoku es un rompecabezas de colocación de números jugado en un tablero de 9x9. El jugador tiene que llenar el tablero de una manera muy específica:

Cada fila del tablero debe contener todos los dígitos del 0 al 9 (el orden no importa).
Cada columna del tablero debe contener todos los dígitos del 0 al 9 (nuevamente, el orden no importa).
Cada uno de los 9 subcuadros de 3x3 de la tabla debe contener todos los dígitos del 0 al 9.
Si necesitas más detalles, puedes encontrarlos aquí.

Tu tarea es escribir un programa que:

Lea las 9 filas del Sudoku, cada una con 9 dígitos (verifica cuidadosamente si los datos ingresados son válidos).
Da como salida Si si el Sudoku es válido y No de lo contrario.
Prueba tu código utilizando los datos que te proporcionamos.

Completo Test DataDatos de Prueba
Entrada de Muestra:

295743861 431865927 876192543 387459216 612387495 549216738 763524189 928671354 154938672

Salida de muestra:

SiOutput

Entrada de Muestra:

195743862 431865927 876192543 387459216 612387495 549216738 763524189 928671354 254938671

Salida de muestra:

No
'''

# Una función que verifica si una lista pasada como argumento contiene
# nueve dígitos del '1' al '9'.
# 295743861 
# 431865927 
# 876192543 
# 387459216 
# 612387495 
# 549216738 
# 763524189 
# 928671354 
# 154938672

# sudokuBoard = [
#     [0, 0, 4, 0, 6, 0, 0, 0, 5],
#         [7, 8, 0, 4, 0, 0, 0, 2, 0],
#         [0, 0, 2, 6, 0, 1, 0, 7, 8],
#         [6, 1, 0, 0, 7, 5, 0, 0, 9],
#         [0, 0, 7, 5, 4, 0, 0, 6, 1],
#         [0, 0, 1, 7, 5, 0, 9, 3, 0],
#         [0, 7, 0, 3, 0, 0, 0, 1, 0],
#         [0, 4, 0, 2, 0, 6, 0, 0, 7],
#         [0, 2, 0, 0, 0, 7, 4, 0, 0],
# ]

# sudokuBoard = [
#         [7, 8, 0, 4, 0, 0, 1, 2, 0],
#         [6, 0, 0, 0, 7, 5, 0, 0, 9],
#         [0, 0, 0, 6, 0, 1, 0, 7, 8],
#         [0, 0, 7, 0, 4, 0, 2, 6, 0],
#         [0, 0, 1, 0, 5, 0, 9, 3, 0],
#         [9, 0, 4, 0, 6, 0, 0, 0, 5],
#         [0, 7, 0, 3, 0, 0, 0, 1, 2],
#         [1, 2, 0, 0, 0, 7, 4, 0, 0],
#         [0, 4, 9, 2, 0, 6, 0, 0, 7]
#     ]

sudokuBoard = '''295743861
431865927
876192543
387459216
612387495
549216738
763524189
928671354
154938672'''

sudokuBoard = '''200080300
060070084
030500209
000105408
000000000
402706000
301007040
720040060
004010003'''

# sudokuBoard = '''195743862
# 431865927
# 876192543
# 387459216
# 612387495
# 549216738
# 763524189
# 928671354
# 254938671'''

def setBoard(sudokuBoard):
    sudoku = list()
    rows = sudokuBoard.split('\n')

    for row in rows:
        column = list()
        for character in row:
            digit = int(character)
            column.append(digit)
        sudoku.append(column)
    return sudoku


def print_sudoku(sudoku):
    for l in sudoku:
        print(l)

def encontrar_coordenada_grid(val):
    if val <= 2:
        return 0
    elif val <= 5:
        return 1
    else:
        return 2

def obtener_grid_para_celda(x, y, sudoku):
    subgrid_col = encontrar_coordenada_grid(x)
    subgrid_fila = encontrar_coordenada_grid(y)
    
    grid = []
    for fila in sudoku[subgrid_fila *3: subgrid_fila *3 + 3]:
        for col in fila[subgrid_col *3: subgrid_col *3 + 3]:
            grid.append(col)    
    return grid


def es_posible(x, y, v, sudoku):
    # Revisar la fila
    if v in sudoku[y]:
        return False
    
    # revisar la columna
    col = [fila[x] for fila in sudoku]
    if v in col:
        return False
    
    # Revisar sub grid 3x3
    grid3x3 = obtener_grid_para_celda(x, y, sudoku)
    print(grid3x3)
    if v in grid3x3:
        return False
    
    return True


def resolver_sudoku(sudoku):
    for y in range(9):
        for x in range(9):
            if sudoku[y][x] == 0:
                for valor in range(1,10):
                    if es_posible(x, y, valor, sudoku):
                        sudoku[y][x] = valor
                        resolver_sudoku(sudoku)
                        sudoku[y][x] = 0
                return
            
    print_sudoku(sudoku)
    return

            
sudoku = setBoard(sudokuBoard)
resolver_sudoku(sudoku)
#print_sudoku(sudoku)
#es_posible(6, 8, 1, sudoku)