from AppiumLibrary import *


def try_to_find_element(element):
    try:
        AppiumLibrary.wait_until_element_is_visible(element)
    except Exception as e:
        print(f'Element not found')
    pass

def try_to_find_text(text):
    try:
        AppiumLibrary.wait_until_page_contains(text)
    except Exception as e:
        print(f'Text not found')
    pass

def check_multiples_routes():
    try:
        AppiumLibrary.wait_until_element_is_visible('Selecione uma rota',timeout=30)
    except Exception as e:
        print(f'Element not found')
        return

    AppiumLibrary.click_element(id='br.com.hbsis.entrega:id/dropdownRoutes')
    AppiumLibrary.click_element(id='id=br.com.hbsis.entrega:id/btSelectRoute')
    sleep(1)
    AppiumLibrary.click_element(id='br.com.hbsis.entrega:id/btSelectRoute')
    pass