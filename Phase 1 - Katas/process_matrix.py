
def get_neigbors(j,i,mat):
    """
    Devuelve los indices de todos los elementos de la matriz original

    Para acceder a cada elemento, usaremos dos índices (i y j), siendo que i representa la columna y j la fila.

    """
    #neigbor_up = j - 1
    #neigbor_left =  i -1
    #neigbor_down = j + 1
    #neigbor_right = i + 1
    num_lines = len(mat)  
    num_cols = len(mat[0])

    neigbors = [] 
	
    if j > 0:
        neigbors.append((j - 1,i)) #up
               
    if i > 0:
        neigbors.append((j,i-1)) #left
         
    if j < (num_lines -1):
        neigbors.append((j + 1,i)) #down
        
    if i < (num_cols -1):
        neigbors.append((j,i+1)) #right
       
        
    return neigbors
	
def get_avg_neigbors(central_element,neigbors,mat):
    """
    Hace el calculo del promedio del elemento y sus vecinos
    """

    num_neigbors = len(neigbors)
    sum_neigbors = central_element
    
    for neigbor in neigbors:
        sum_neigbors += mat[neigbor[0]][neigbor[1]]
    return  sum_neigbors/(num_neigbors + 1)

def process_element (j,i,mat):
    """
    Recibir los índices del elemento y la matriz original, hacer el promedio, y devolverá el nuevo valor.
    Subtareas:
    - Descubrir los vecinos de un elemento
    - Obtener su promedio
    - Promediarlo con el valor antiguo
    """
     # obtengo la lista de vecinos
    neigbors_coord = get_neigbors(j,i,mat)

    element = mat[j][i]
    #print(element)
    # calculo su promedio
    average = get_avg_neigbors(element,neigbors_coord,mat)
 
    # devuelvo el valor final
    return average

def process_matrix(mat):
    """
    Recibe como parámetro una matriz (lista de listas) de números y devuelve otra, 
    con el mismo tamaño y número de elementos.
    La transformación que aplica es la siguiente: 
    cada elemento de la matriz pasa a tener como valor el promedio de su valor antiguo y los valores de sus vecinos.
    """
    new_mat = []
    for j, column in enumerate(mat):
        new_row = []
        
        for i, values in enumerate(column):
            
            new_value = process_element(j,i,mat)
            new_row.append(round(new_value, 2))
        print(new_row)
        new_mat.append(new_row)
    return new_mat

if __name__ == "__main__":
    numbers = [(1,2,3,4,5),(2,4,5,6,7),(5,6,3,1,9),(8,9,5,4,3),(7,2,3,4,1)]

    process_matrix(numbers)
  
