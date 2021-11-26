Return-Path: <open-iscsi+bncBCV2L6ETUYNBBPXJQOGQMGQEJY5PKIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id D26F245F034
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 15:52:47 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id y25-20020ac87059000000b002a71d24c242sf10050412qtm.0
        for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 06:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OWwlKWkoRFNKbi6tHpIyKXYyJqsTMXfbNr0uWoBLmSU=;
        b=ABUSuL+HKyE0QqgPbCN2QyIK9yY8c0SxKaS+p7V71YopIBA3F5jZggGj2NShi302vO
         OvpEFyCVMVtjp45NZleeAdQ9lV5eCzlsrJKwE7cGRUpde0N0RK0Jx9ke03+hx8Nf1mMH
         NQMpJCleObfitzrhq5I458yHlMgCd8bzvDuIk7PAAp3t4BofQyZpG0BkSeve0wbbq8ng
         f0O0RXazsgDgo1os/piqe2uIjtzAaasQm8rOc+ybqmey5b5NLCVdghTpewd6IhVZ05Ru
         aQ2PbkZoLKVwY2QxT8/YWfVawCMscs0H90XsFBq6Pgvn4Kh29Vf2N7Hsa9z8VkIVMffh
         PelA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OWwlKWkoRFNKbi6tHpIyKXYyJqsTMXfbNr0uWoBLmSU=;
        b=K4vVRQsLlEC1R/qPLz79/oVY9OOQhqVS4MatWdSb5VqOq4DzUAqK0NJw+Ef5x0ZYoU
         1kQiqKa97YKUntg4R1ud4wiPMC1xnud3kSfDr0rfCDE5en4qjvTqj+6HJZAWSC03tdvo
         hNnaRgpY1K93MtHzCnDSQj5CxqJb13wuOVcjYUQYR7+/uE0xmqGRgGrLYoYvmZMXHbz1
         50FVEtmjJ3pvQlpm5W7vi2s/e87tJW/lYzKKCvX2tyapOSGI1nhazQZLP55H57uzkZyV
         WEGp2Uo+bWvAtIkjRzug8h5BmpHzfg+Q2oUgy/LJfp95jahJTxd/DsUc74M0qQASe5nq
         1kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OWwlKWkoRFNKbi6tHpIyKXYyJqsTMXfbNr0uWoBLmSU=;
        b=oBCXRFRspwgoygH149EQBFYHV5g/v1CJobwND93N8qQD2qIRuyAeo4qqFFg5zFW8Pj
         MX3LTPAqCb4gGuzirdjMbIDIueUrJfThjURf3xJBQCy5jEa5vMooZrEgalr/SlqcOm+9
         mPsxtcGnhWdWXsVrZPRzH8HBq+y7udBDCo7nr/v5QB8VUt/zapuAb3jQycFIpPDaHjnZ
         GN8lQCmB63Vm0zuAItKpMYy0gnw1loPtU464LrYcnJ+tewgSf4+T4N5NEH0npJoDE7fz
         6cEtIDi1+ZERbTE5uS2y7kHnmk6xvJN2aTNfk1Q7MOCz71C6y3cUusiWvi3XgEk71lHG
         nzCA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5318Ej5aWV/qbmZeQALGtQHfc10sCjouBKUZXjHLW2GCt77rDxAC
	TLUUDHzn5kz/JdPgcQ+HkY0=
X-Google-Smtp-Source: ABdhPJycSz1PSGXSRlq5tPirX0mZXXMBs6QlFIk6QJXlnuRGTtdjJwmQEW+eu+2Ggos5/d+aTnbxcQ==
X-Received: by 2002:ad4:4ab3:: with SMTP id i19mr13173889qvx.119.1637938366603;
        Fri, 26 Nov 2021 06:52:46 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:1a81:: with SMTP id s1ls3522349qtc.11.gmail; Fri,
 26 Nov 2021 06:52:46 -0800 (PST)
X-Received: by 2002:a05:622a:210:: with SMTP id b16mr16306278qtx.613.1637938365939;
        Fri, 26 Nov 2021 06:52:45 -0800 (PST)
Date: Fri, 26 Nov 2021 06:52:45 -0800 (PST)
From: Mauricio <raubvogel@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0c84ea13-e5f5-4755-8f34-3b81dd00406cn@googlegroups.com>
Subject: hostbyte=DID_TRANSPORT_DISRUPTED: network issues or?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4742_1811791979.1637938365337"
X-Original-Sender: raubvogel@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_4742_1811791979.1637938365337
Content-Type: multipart/alternative; 
	boundary="----=_Part_4743_1790010163.1637938365337"

------=_Part_4743_1790010163.1637938365337
Content-Type: text/plain; charset="UTF-8"

      Now I was able to address my issue with the testbox, I can mount the 
LUN in that host without issues. So it is time to switch back to the 
problem box, which started having issues since the last reboot. I apply the 
solution used in the testbox and then restart the service:

[root@problembox ~]# systemctl restart iscsi
[root@problembox ~]#

And it acts like it is happy (so far; did not check dmesg or fdisk):

[root@problembox ~]# systemctl status iscsi
o iscsi.service - Login and scanning of iSCSI devices
   Loaded: loaded (/usr/lib/systemd/system/iscsi.service; enabled; vendor 
preset: disabled)
   Active: active (exited) since Thu 2021-11-25 23:21:40 EST; 9h ago
     Docs: man:iscsiadm(8)
           man:iscsid(8)
  Process: 3414 ExecStart=/usr/sbin/iscsiadm -m node --loginall=automatic 
(code=exited, status=0/SUCCESS)
 Main PID: 3414 (code=exited, status=0/SUCCESS)
    Tasks: 0 (limit: 203741)
   Memory: 0B
   CGroup: /system.slice/iscsi.service

Nov 25 23:17:52 problembox systemd[1]: Starting Login and scanning of iSCSI 
devices...
Nov 25 23:21:40 problembox iscsiadm[3414]: Logging in to [iface: default, 
target: iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
192.168.10.18,3260]
Nov 25 23:21:40 problembox iscsiadm[3414]: Login to [iface: default, 
target: iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
192.168.10.18,3260] successful.
Nov 25 23:21:40 problembox systemd[1]: Started Login and scanning of iSCSI 
devices.
[root@problembox ~]#

[root@problembox ~]# ls -lh /dev/sd*
brw-rw----. 1 root disk 8,  0 Nov 25 21:42 /dev/sda
brw-rw----. 1 root disk 8,  1 Nov 25 21:42 /dev/sda1
brw-rw----. 1 root disk 8,  2 Nov 25 21:42 /dev/sda2
brw-rw----. 1 root disk 8,  3 Nov 25 21:42 /dev/sda3
brw-rw----. 1 root disk 8, 16 Nov 25 23:33 /dev/sdb
[root@problembox ~]# ls -l /dev/disk/by-path/|grep ip
lrwxrwxrwx. 1 root root  9 Nov 25 23:33 
ip-192.168.10.18:3260-iscsi-iqn.2000-01.com.synology-iSCSI:storage.01-lun-0 
-> ../../sdb
[root@problembox ~]#

Time to go probe the elephant in the room

[root@problembox ~]# fdisk -l /dev/sdb
fdisk: cannot open /dev/sdb: Input/output error
[root@problembox ~]#

What does dmesg has to tell me? The expected behaviour as seen in the 
testbox (mounting the very same LUN):

[root@testbox ~]# dmesg -T
[...]
[Thu Nov 25 19:58:00 2021] Loading iSCSI transport class v2.0-870.
[Thu Nov 25 19:58:00 2021] iscsi: registered transport (tcp)
[Thu Nov 25 19:58:00 2021] scsi host2: iSCSI Initiator over TCP/IP
[Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: Direct-Access     SYNOLOGY iSCSI 
Storage    3.1  PQ: 0 ANSI: 5
[Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: supports implicit TPGS
[Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: device 
naa.6001405e61f8c59d35fdd4481da3e1d3 port group 1 rel port 1
[Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: Attached scsi generic sg1 type 0
[Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: transition timeout set to 60 
seconds
[Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: port group 01 state A 
non-preferred supports TOlUSNA
[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] 754974720 512-byte logical 
blocks: (387 GB/360 GiB)
[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Write Protect is off
[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Mode Sense: 3b 00 00 00
[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Write cache: disabled, read 
cache: enabled, doesn't support DPO or FUA
[Thu Nov 25 19:58:00 2021]  sda: sda1
[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Attached SCSI disk
[root@testbox ~]#

Behaviour seen in the problembox

[root@problembox ~]# dmesg -T
[Thu Nov 25 23:17:51 2021] scsi host8: iSCSI Initiator over TCP/IP
[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: Direct-Access     SYNOLOGY iSCSI 
Storage    3.1  PQ: 0 ANSI: 5
[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: supports implicit TPGS
[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: device 
naa.6001405e61f8c59d35fdd4481da3e1d3 port group 1 rel port 1
[Thu Nov 25 23:17:51 2021] sd 8:0:0:0: Attached scsi generic sg1 type 0
[Thu Nov 25 23:18:02 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4300399244, last ping 4300404736, now 4300409856
[Thu Nov 25 23:18:02 2021]  connection4:0: detected conn error (1022)
[...]
[Thu Nov 25 23:31:56 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:31:56 2021] sd 8:0:0:0: [sdb] tag#76 FAILED Result: 
hostbyte=DID_TRANSPORT_DISRUPTED driverbyte=DRIVER_OK cmd_age=72s
[Thu Nov 25 23:31:56 2021] sd 8:0:0:0: [sdb] tag#76 CDB: Read(10) 28 00 2c 
ff ff 80 00 00 08 00
[Thu Nov 25 23:31:56 2021] blk_update_request: I/O error, dev sdb, sector 
754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[Thu Nov 25 23:32:10 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4301247437, last ping 4301252608, now 4301257728
[Thu Nov 25 23:32:10 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:32:22 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4301259759, last ping 4301264896, now 4301270016
[Thu Nov 25 23:32:22 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:32:35 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4301273035, last ping 4301278208, now 4301283328
[Thu Nov 25 23:32:35 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:32:48 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4301285359, last ping 4301290496, now 4301295616
[Thu Nov 25 23:32:48 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:33:00 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4301297653, last ping 4301302784, now 4301307904
[Thu Nov 25 23:33:00 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:33:13 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4301310922, last ping 4301316096, now 4301321216
[Thu Nov 25 23:33:13 2021]  connection4:0: detected conn error (1022)
[Thu Nov 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 FAILED Result: 
hostbyte=DID_TRANSPORT_DISRUPTED driverbyte=DRIVER_OK cmd_age=73s
[Thu Nov 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 CDB: Read(10) 28 00 2c 
ff ff 80 00 00 08 00
[Thu Nov 25 23:33:13 2021] blk_update_request: I/O error, dev sdb, sector 
754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[Thu Nov 25 23:33:13 2021] Buffer I/O error on dev sdb, logical block 
94371824, async page read
[Fri Nov 26 00:46:06 2021]  connection4:0: ping timeout of 5 secs expired, 
recv timeout 5, last rx 4305683173, last ping 4305688576, now 4305693696
[Fri Nov 26 00:46:06 2021]  connection4:0: detected conn error (1022)
[root@problembox ~]#

Given that problembox is a baremetal server and testbox is a vm guest in a 
KVM server which is connected to the same switch as problembox, and that 
problembox has been working fine for 2 years until the very last reboot, 
are these network issues or something else.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0c84ea13-e5f5-4755-8f34-3b81dd00406cn%40googlegroups.com.

------=_Part_4743_1790010163.1637938365337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>&nbsp; &nbsp; &nbsp; Now I was able to address my issue with the testb=
ox, I can mount the LUN in that host without issues. So it is time to switc=
h back to the problem box, which started having issues since the last reboo=
t. I apply the solution used in the testbox and then restart the service:</=
div><div><br></div><div>[root@problembox ~]# systemctl restart iscsi</div><=
div>[root@problembox ~]#</div><div><br></div><div>And it acts like it is ha=
ppy (so far; did not check dmesg or fdisk):</div><div><br></div><div>[root@=
problembox ~]# systemctl status iscsi</div><div>o iscsi.service - Login and=
 scanning of iSCSI devices</div><div>&nbsp; &nbsp;Loaded: loaded (/usr/lib/=
systemd/system/iscsi.service; enabled; vendor preset: disabled)</div><div>&=
nbsp; &nbsp;Active: active (exited) since Thu 2021-11-25 23:21:40 EST; 9h a=
go</div><div>&nbsp; &nbsp; &nbsp;Docs: man:iscsiadm(8)</div><div>&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;man:iscsid(8)</div><div>&nbsp; Process: 3414=
 ExecStart=3D/usr/sbin/iscsiadm -m node --loginall=3Dautomatic (code=3Dexit=
ed, status=3D0/SUCCESS)</div><div>&nbsp;Main PID: 3414 (code=3Dexited, stat=
us=3D0/SUCCESS)</div><div>&nbsp; &nbsp; Tasks: 0 (limit: 203741)</div><div>=
&nbsp; &nbsp;Memory: 0B</div><div>&nbsp; &nbsp;CGroup: /system.slice/iscsi.=
service</div><div><br></div><div>Nov 25 23:17:52 problembox systemd[1]: Sta=
rting Login and scanning of iSCSI devices...</div><div>Nov 25 23:21:40 prob=
lembox iscsiadm[3414]: Logging in to [iface: default, target: iqn.2000-01.c=
om.synology-iSCSI:storage.01, portal: 192.168.10.18,3260]</div><div>Nov 25 =
23:21:40 problembox iscsiadm[3414]: Login to [iface: default, target: iqn.2=
000-01.com.synology-iSCSI:storage.01, portal: 192.168.10.18,3260] successfu=
l.</div><div>Nov 25 23:21:40 problembox systemd[1]: Started Login and scann=
ing of iSCSI devices.</div><div>[root@problembox ~]#</div><div><br></div><d=
iv>[root@problembox ~]# ls -lh /dev/sd*</div><div>brw-rw----. 1 root disk 8=
,&nbsp; 0 Nov 25 21:42 /dev/sda</div><div>brw-rw----. 1 root disk 8,&nbsp; =
1 Nov 25 21:42 /dev/sda1</div><div>brw-rw----. 1 root disk 8,&nbsp; 2 Nov 2=
5 21:42 /dev/sda2</div><div>brw-rw----. 1 root disk 8,&nbsp; 3 Nov 25 21:42=
 /dev/sda3</div><div>brw-rw----. 1 root disk 8, 16 Nov 25 23:33 /dev/sdb</d=
iv><div>[root@problembox ~]# ls -l /dev/disk/by-path/|grep ip</div><div>lrw=
xrwxrwx. 1 root root&nbsp; 9 Nov 25 23:33 ip-192.168.10.18:3260-iscsi-iqn.2=
000-01.com.synology-iSCSI:storage.01-lun-0 -&gt; ../../sdb</div><div>[root@=
problembox ~]#</div><div><br></div><div>Time to go probe the elephant in th=
e room</div><div><br></div><div>[root@problembox ~]# fdisk -l /dev/sdb</div=
><div>fdisk: cannot open /dev/sdb: Input/output error</div><div>[root@probl=
embox ~]#</div><div><br></div><div>What does dmesg has to tell me? The expe=
cted behaviour as seen in the testbox (mounting the very same LUN):</div><d=
iv><br></div><div>[root@testbox ~]# dmesg -T</div><div>[...]</div><div>[Thu=
 Nov 25 19:58:00 2021] Loading iSCSI transport class v2.0-870.</div><div>[T=
hu Nov 25 19:58:00 2021] iscsi: registered transport (tcp)</div><div>[Thu N=
ov 25 19:58:00 2021] scsi host2: iSCSI Initiator over TCP/IP</div><div>[Thu=
 Nov 25 19:58:00 2021] scsi 2:0:0:0: Direct-Access&nbsp; &nbsp; &nbsp;SYNOL=
OGY iSCSI Storage&nbsp; &nbsp; 3.1&nbsp; PQ: 0 ANSI: 5</div><div>[Thu Nov 2=
5 19:58:00 2021] scsi 2:0:0:0: alua: supports implicit TPGS</div><div>[Thu =
Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: device naa.6001405e61f8c59d35fdd4=
481da3e1d3 port group 1 rel port 1</div><div>[Thu Nov 25 19:58:00 2021] scs=
i 2:0:0:0: Attached scsi generic sg1 type 0</div><div>[Thu Nov 25 19:58:00 =
2021] scsi 2:0:0:0: alua: transition timeout set to 60 seconds</div><div>[T=
hu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: port group 01 state A non-pref=
erred supports TOlUSNA</div><div>[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sd=
a] 754974720 512-byte logical blocks: (387 GB/360 GiB)</div><div>[Thu Nov 2=
5 19:58:00 2021] sd 2:0:0:0: [sda] Write Protect is off</div><div>[Thu Nov =
25 19:58:00 2021] sd 2:0:0:0: [sda] Mode Sense: 3b 00 00 00</div><div>[Thu =
Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Write cache: disabled, read cache: =
enabled, doesn't support DPO or FUA</div><div>[Thu Nov 25 19:58:00 2021]&nb=
sp; sda: sda1</div><div>[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Attach=
ed SCSI disk</div><div>[root@testbox ~]#</div><div><br></div><div>Behaviour=
 seen in the problembox</div><div><br></div><div>[root@problembox ~]# dmesg=
 -T</div><div><div>[Thu Nov 25 23:17:51 2021] scsi host8: iSCSI Initiator o=
ver TCP/IP</div><div>[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: Direct-Access=
&nbsp; &nbsp; &nbsp;SYNOLOGY iSCSI Storage&nbsp; &nbsp; 3.1&nbsp; PQ: 0 ANS=
I: 5</div><div>[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: supports impl=
icit TPGS</div><div>[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: device n=
aa.6001405e61f8c59d35fdd4481da3e1d3 port group 1 rel port 1</div><div>[Thu =
Nov 25 23:17:51 2021] sd 8:0:0:0: Attached scsi generic sg1 type 0</div><di=
v>[Thu Nov 25 23:18:02 2021]&nbsp; connection4:0: ping timeout of 5 secs ex=
pired, recv timeout 5, last rx 4300399244, last ping 4300404736, now 430040=
9856</div><div>[Thu Nov 25 23:18:02 2021]&nbsp; connection4:0: detected con=
n error (1022)</div></div><div>[...]</div><div>[Thu Nov 25 23:31:56 2021]&n=
bsp; connection4:0: detected conn error (1022)</div><div>[Thu Nov 25 23:31:=
56 2021] sd 8:0:0:0: [sdb] tag#76 FAILED Result: hostbyte=3DDID_TRANSPORT_D=
ISRUPTED driverbyte=3DDRIVER_OK cmd_age=3D72s</div><div>[Thu Nov 25 23:31:5=
6 2021] sd 8:0:0:0: [sdb] tag#76 CDB: Read(10) 28 00 2c ff ff 80 00 00 08 0=
0</div><div>[Thu Nov 25 23:31:56 2021] blk_update_request: I/O error, dev s=
db, sector 754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0</div><=
div>[Thu Nov 25 23:32:10 2021]&nbsp; connection4:0: ping timeout of 5 secs =
expired, recv timeout 5, last rx 4301247437, last ping 4301252608, now 4301=
257728</div><div>[Thu Nov 25 23:32:10 2021]&nbsp; connection4:0: detected c=
onn error (1022)</div><div>[Thu Nov 25 23:32:22 2021]&nbsp; connection4:0: =
ping timeout of 5 secs expired, recv timeout 5, last rx 4301259759, last pi=
ng 4301264896, now 4301270016</div><div>[Thu Nov 25 23:32:22 2021]&nbsp; co=
nnection4:0: detected conn error (1022)</div><div>[Thu Nov 25 23:32:35 2021=
]&nbsp; connection4:0: ping timeout of 5 secs expired, recv timeout 5, last=
 rx 4301273035, last ping 4301278208, now 4301283328</div><div>[Thu Nov 25 =
23:32:35 2021]&nbsp; connection4:0: detected conn error (1022)</div><div>[T=
hu Nov 25 23:32:48 2021]&nbsp; connection4:0: ping timeout of 5 secs expire=
d, recv timeout 5, last rx 4301285359, last ping 4301290496, now 4301295616=
</div><div>[Thu Nov 25 23:32:48 2021]&nbsp; connection4:0: detected conn er=
ror (1022)</div><div>[Thu Nov 25 23:33:00 2021]&nbsp; connection4:0: ping t=
imeout of 5 secs expired, recv timeout 5, last rx 4301297653, last ping 430=
1302784, now 4301307904</div><div>[Thu Nov 25 23:33:00 2021]&nbsp; connecti=
on4:0: detected conn error (1022)</div><div>[Thu Nov 25 23:33:13 2021]&nbsp=
; connection4:0: ping timeout of 5 secs expired, recv timeout 5, last rx 43=
01310922, last ping 4301316096, now 4301321216</div><div>[Thu Nov 25 23:33:=
13 2021]&nbsp; connection4:0: detected conn error (1022)</div><div>[Thu Nov=
 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 FAILED Result: hostbyte=3DDID_T=
RANSPORT_DISRUPTED driverbyte=3DDRIVER_OK cmd_age=3D73s</div><div>[Thu Nov =
25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 CDB: Read(10) 28 00 2c ff ff 80 =
00 00 08 00</div><div>[Thu Nov 25 23:33:13 2021] blk_update_request: I/O er=
ror, dev sdb, sector 754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio clas=
s 0</div><div>[Thu Nov 25 23:33:13 2021] Buffer I/O error on dev sdb, logic=
al block 94371824, async page read</div><div>[Fri Nov 26 00:46:06 2021]&nbs=
p; connection4:0: ping timeout of 5 secs expired, recv timeout 5, last rx 4=
305683173, last ping 4305688576, now 4305693696</div><div>[Fri Nov 26 00:46=
:06 2021]&nbsp; connection4:0: detected conn error (1022)</div><div>[root@p=
roblembox ~]#</div><div><br></div><div>Given that problembox is a baremetal=
 server and testbox is a vm guest in a KVM server which is connected to the=
 same switch as problembox, and that problembox has been working fine for 2=
 years until the very last reboot, are these network issues or something el=
se.</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0c84ea13-e5f5-4755-8f34-3b81dd00406cn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0c84ea13-e5f5-4755-8f34-3b81dd00406cn%40googlegroups.com</a>.=
<br />

------=_Part_4743_1790010163.1637938365337--

------=_Part_4742_1811791979.1637938365337--
