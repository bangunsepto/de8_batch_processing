#!/usr/bin/python3
import os
import json
import psycopg2

if __name__ == '__main__':
  #  print("Hello")
  path = os.getcwd()
  with open(path+'/'+'config.json') as file:
    conf = json.load(file)['postgresql']
  try:
    conn = psycopg2.connect(host=conf['host'], 
                            database=conf['db'], 
                            user=conf['user'], 
                            password=conf['pwd'], 
                            port=conf['port'] # saya menggunakan port 2022 sebagai pembeda karena koneksi DB ke wsl nya
                            )
    print(f"[INFO] Sukses konek ke PostgreSQL ....")
  except:
    print(f"[INFO] Gagal konek ke PostgreSQL ....")
  #print(conf)