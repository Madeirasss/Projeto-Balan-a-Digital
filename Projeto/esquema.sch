<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Saida_Preco" />
        <signal name="Saida_Peso" />
        <signal name="peso" />
        <signal name="Precoo" />
        <signal name="XLXN_2(31:0)" />
        <signal name="XLXN_1(14:0)" />
        <port polarity="Output" name="Saida_Preco" />
        <port polarity="Output" name="Saida_Peso" />
        <port polarity="Input" name="peso" />
        <port polarity="Input" name="Precoo" />
        <blockdef name="pesosemtara">
            <timestamp>2023-11-11T14:22:27</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="preco">
            <timestamp>2023-11-11T14:32:1</timestamp>
            <rect width="336" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="bcd">
            <timestamp>2023-11-11T14:31:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="pesosemtara" name="XLXI_1">
            <blockpin signalname="peso" name="entrada(15:0)" />
            <blockpin signalname="XLXN_1(14:0)" name="resultado(15:0)" />
        </block>
        <block symbolname="bcd" name="XLXI_3">
            <blockpin signalname="XLXN_1(14:0)" name="bin(14:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="bcd(15:0)" />
        </block>
        <block symbolname="preco" name="XLXI_2">
            <blockpin signalname="XLXN_2(31:0)" name="peso(31:0)" />
            <blockpin signalname="Precoo" name="preco(31:0)" />
            <blockpin signalname="Saida_Peso" name="saida_peso(31:0)" />
            <blockpin signalname="Saida_Preco" name="saida_preco(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Saida_Preco">
            <wire x2="2368" y1="1104" y2="1104" x1="2240" />
        </branch>
        <branch name="Saida_Peso">
            <wire x2="2368" y1="1040" y2="1040" x1="2240" />
        </branch>
        <instance x="736" y="1072" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1264" y="1072" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1776" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <branch name="peso">
            <wire x2="736" y1="1040" y2="1040" x1="672" />
        </branch>
        <branch name="Precoo">
            <wire x2="736" y1="1104" y2="1104" x1="672" />
            <wire x2="1776" y1="1104" y2="1104" x1="736" />
        </branch>
        <branch name="XLXN_2(31:0)">
            <wire x2="1776" y1="1040" y2="1040" x1="1648" />
        </branch>
        <branch name="XLXN_1(14:0)">
            <wire x2="1264" y1="1040" y2="1040" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="672" y="1040" name="peso" orien="R180" />
        <iomarker fontsize="28" x="672" y="1104" name="Precoo" orien="R180" />
        <iomarker fontsize="28" x="2368" y="1040" name="Saida_Peso" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1104" name="Saida_Preco" orien="R0" />
    </sheet>
</drawing>