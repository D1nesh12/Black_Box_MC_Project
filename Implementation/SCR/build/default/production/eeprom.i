# 1 "eeprom.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "eeprom.c" 2
# 1 "./main.h" 1



void enter_menu( unsigned char key);
# 1 "eeprom.c" 2

# 1 "./i2c.h" 1




void init_i2c(void);
void i2c_start(void);
void i2c_rep_start(void);
void i2c_stop(void);
void i2c_write(unsigned char data);
unsigned char i2c_read(void);
# 2 "eeprom.c" 2

# 1 "./eeprom.h" 1








void write_eeprom(unsigned char address, unsigned char data);
unsigned char read_eeprom(unsigned char address);
# 3 "eeprom.c" 2



void write_eeprom(unsigned char addr, unsigned char data)
{
 i2c_start();
 i2c_write(0xA0);
 i2c_write(addr);
 i2c_write(data);
 i2c_stop();
 for(int i = 3000; i--;);
}

unsigned char read_eeprom(unsigned char address)
{
 unsigned char data;

 i2c_start();
 i2c_write(0xA0);
 i2c_write(address);
 i2c_rep_start();
 i2c_write(0xA1);
 data = i2c_read();
 i2c_stop();

 return data;
}
