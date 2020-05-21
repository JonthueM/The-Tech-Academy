from tkinter import filedialog
from tkinter import *
import tkinter as tk
import os, sys, time, time, shutil, sqlite3


import main
import gui

f = ''

'''
def create_db(self):
    conn = sqlite.connect('DestinationRecords')
    with conn:
        cur = conn.cursor()
        cur.execute('CREATE TABLE if not exists records(ID INTEGER PRIMARY KEY AUTOINCREMENT, col_fname TEXT, );')
        conn.commir()
        
 '''       


def getSource(self):
    self.Source.set(filedialog.askdirectory())
    retreivedSource = self.Source.get()
    self.txt_getSource.delete(0,END)
    self.txt_getSource.insert(0,retreivedSource)
    print('You have picked {} as your source '.format(retreivedSource))
    message = retreivedSource + " selected as source \n"
    self.status.insert(END, message)
    return  retreivedSource



def getDestination(self):
    self.Destination.set(filedialog.askdirectory())
    retreived = self.Destination.get()
    self.txt_getDestination.delete(0,END)
    self.txt_getDestination.insert(0,retreived)
    print('You have picked {} as your path'.format(retreived))
    message = retreived + " selected as destination \n"
    self.status.insert(END, message)
    return  retreived

def testPrint1(self):
    os.listdir(selectedSourcePath)
    print(os.listdir(selectedSourcePath))


def Automatize(self):
    self.status.insert(END,"Automatizing .")
    for filename in os.listdir(self.Source.get()):
        filename = os.path.join(self.Source.get(), filename)
        if (filename.endswith(".txt")):
            shutil.move(self.Source.get(), self.Destination.get())
            self.status.insert(END,". . Done!")
'''          
    self.status.insert(END,"Automatizing .")
    if self.Source.get().endswith(".txt"):
        shutil.move(self.Source.get(), self.Destination.get())
        self.status.insert(END,". . Done!")
            
'''            

 
if __name__ == "__main__":
    pass

        
        
    
