#!/bin/bash

read -p "Введите имя файла для копирования: " source_file

read -p "Введите необходимок количество копий: " number_of_copies

#read -p "Введите путь к файлу со списком добавочных имён : " names_of_copies

for i in $(seq 1 $number_of_copies); do
  cp -r $source_file "${source_file}_$(sed -n "$i"p /home/sedo/sstu_test/togs.txt)"
done