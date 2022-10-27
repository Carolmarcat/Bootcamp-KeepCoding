
from functools import reduce

def process_list(elements):
    """
    Recibe una lista de números y devuelve una nueva, con los elementos
    cambiados. Cada elemento de la nueva, será el promedio del valor antiguo y el de sus 
    vecinos
    """
    # Creo una lista vacía donde iré acumulando
    processed_list = []

    if len(elements) == 1:
        processed_list = elements
    else:

        # por cada elemento de la lista....
        for index, element in enumerate(elements):
            # lo proceso 
            new_element = process_element(index, elements)
            # lo añado a la lista
            processed_list.append(new_element)

    # devuelvo la nueva lista
    return processed_list

def process_element(index, elements):
    """
    Recibe el índice de un elemento y la lista en la que está,
    calcula su promedio con sus vecinos y devuelve dicho promedio
    """
    # obtengo la lista de vecinos
    indices = get_neighbour_indices(index, elements)
    values = get_neighbour_values(indices, elements)

    # calculo su promedio
    average = get_average(values)
 
    # devuelvo el valor final
    return average

def get_neighbour_indices(index, elements):
    """
    Devuelve la lista de ínidces de los vecinos. Se incluye al
    propio elemento
    """
    indices = []
    if index == 0:
        # el primero
        indices.append(index + 1)
    elif index == len(elements) - 1:
        # el último
        indices.append(index - 1)
    else:
        indices.append(index + 1)
        indices.append(index - 1)

    # incluyo al propio elemento como vecino de sí mismo
    indices.append(index)

    return indices

def get_neighbour_values(indices, elements):
    values = []
    for index in indices:
        values.append(elements[index])
    return values

def get_average(numbers):
    """"
    Recibe un alista de números y devuelve su promedio
    """
    return reduce(lambda accum, b: accum + b, numbers, 0) / len(numbers)
