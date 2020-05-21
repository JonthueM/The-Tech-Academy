#!/user/bin/python
# -*- coding: utf-8 -*-

#
#   Python Ver: 3.8.2
#
#   Author:     Jonthue J. Michel
#
#   Purpose:    Assignment 122 Check File GUI using Grid
#
#   Tested OS:  This code was written and tested to work with Windows 10.

from tkinter import *
import tkinter as tk
from tkinter import ttk 
from tkinter import scrolledtext

import main
import func

def load_gui(self):
    self.Source=StringVar()
    self.Destination=StringVar()
    #Labels
    self.label_Directions = Label(self.master, text="Extract from source & move to destination directory ", font="Helvetica 10", background="#1F1F1F", foreground="white")
    self.label_Directions.grid(row=0, column=0,padx=(5,5),pady=(5,0), sticky=N+W)
    self.label_Directions = Label(self.master, text="Source:" , background="#1F1F1F", foreground="white")
    self.label_Directions.grid(row=1, column=0, padx=(5,5),pady=(5,0), sticky=W)
    self.label_Directions = Label(self.master, text="Destination:", background="#1F1F1F", foreground="white")
    self.label_Directions.grid(row=3, column=0, padx=(5,5),pady=(5,0), sticky=W)
    self.label_Directions = Label(self.master, text="Frontend Console:", background="#1F1F1F", foreground="white")
    self.label_Directions.grid(row=5, column=0, padx=(5,5),pady=(5,0), sticky=W)
    #Browse Button 1 and 2
    self.btn_getSource = tk.Button(self.master,width=13, height=2, text='Browse...', command=lambda:func.getSource(self))
    self.btn_getSource.grid(row=2, column=0, padx=(5,5),pady=(7,0), sticky=W)
    self.btn_getDestination = tk.Button(self.master,width=13, height=2, text='Browse...', command=lambda:func.getDestination(self))
    self.btn_getDestination.grid(row=4, column=0, padx=(5,5),pady=(7,0), sticky=W)
    #Entry Fields
    self.txt_getSource = tk.Entry(self.master, textvariable=self.Source, width = 50)
    self.txt_getSource.grid(row=2, column=0, columnspan = 3, padx=(125,5),pady=(5,5), sticky=W)
    self.txt_getDestination = tk.Entry(self.master, textvariable=self.Destination, width = 50)
    self.txt_getDestination.grid(row=4, column=0, columnspan = 3, padx=(125,5),pady=(5,5), sticky=W)
    #Mock Console
    self.status = scrolledtext.ScrolledText(self.master, wrap = tk.WORD, width = 50, height = 6, font = ("Times New Roman",15), bg='red') 
    self.status.grid(row=6,column = 0, columnspan = 3,  padx=(5,5),pady=(5,5), sticky=W) 
    #Other Buttons
    self.btn_checkForFiles = tk.Button(self.master, width=13, height=2, text='Automatize', command=lambda:func.Automatize(self))
    self.btn_checkForFiles.grid(row=7, column=0, padx=(5,0),pady=(7,5), sticky=W)
    self.btn_closeProgram = tk.Button(self.master, width=12, height=2, text='Close Program')
    self.btn_closeProgram.grid(row=7, column=2, padx=(0,10),pady=(7,7), sticky=E)
    #Image
##    self.label = Label(image=photo)
##    self.label.image = photo # keep a reference!
##    self.label.grid(row=9, column=2)
    return load_gui

if __name__ == "__main__":
    pass
