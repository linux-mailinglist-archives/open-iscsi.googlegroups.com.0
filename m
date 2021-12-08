Return-Path: <open-iscsi+bncBC755V5RXMKBBBHJYOGQMGQESDHAHWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id E39BF46DAB5
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Dec 2021 19:08:05 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id h13-20020ac87d4d000000b002af9c496444sf4622143qtb.22
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Dec 2021 10:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5DKmnH1YRGoLmVyxb+Op4NvxtA5lbrdrbc6wtGgBDrY=;
        b=ihwwSt5boNY4XMIHlPd3Ea1DKVr+E4dlmtPkK/kzAVZ3HVTaxtNbPnDT361c2fSe6W
         AcHEcx54WLQxpdWXnKk1P+hOaJm8kLPrENTIyK1X34s+m9soSlKLXE/tjJXPDVt7Avxw
         sbXZJjojfK/nqrN/khF3OG+pm3a0HIT/DCpcELiaQLklaBZM1E7f1CMjz1jgNcCwSAUL
         YMdsLFNoZuRwNbY55tMNtOKZ1kbVw8C5UV5EV1cSfyh+tpiDvqau6QwEFuB10vrxZft3
         2zj+vc2gHyi4L4j8md2110YQqfJ42WzCVyuN1H/HiA4MPeVn2UqY5eTixnTf6qCFs0F/
         abQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5DKmnH1YRGoLmVyxb+Op4NvxtA5lbrdrbc6wtGgBDrY=;
        b=DAPse5yGZbYJ8IqD40wrno3UjB1s/KyIRakivf0T/azez3wQ6FaFTrPXyMQhvc/UNm
         FSsdeXaPRgSxPIU5Bj3sV6QxXUceiUnofupdzZenRsFQGfGAZg4fOx4WGovchTu/mVB6
         wJbv09JEMBIXGwzA5Vskw7AqfI7DhGfyHY10DhFF3zTkAsHctZ0Y0Ad1+eTUv8XIQC9x
         rWu8tCKMz2WZb8hzNZQ49cvYNUREaMfyo7GsPZl8Ccib8iAj+7Or2PAlYUJY6m+Of8wa
         f1jtIH5fTqy75y3TmFIndxp5k+P44tVv+BKpUoR50g1yUo4PtPRWhxCaa6dJ1gwtIWGA
         DNnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5DKmnH1YRGoLmVyxb+Op4NvxtA5lbrdrbc6wtGgBDrY=;
        b=AOr9UHjTcWSL1H9wHv2ePFSIqOh4pvbgx08xx2qMJNIJoURe5hqw7MCfPfjcE1FT9m
         GAeRpm0WemoNkWWYDBL3q01zvSH6mZxmteAs2P7jgiZOVtxyRHjGLrkrgeMsYLdKTVMb
         mFUC6Bpe79S9cP+qOXh4BQceAso0SeBUw5tzeSCb41MpKd/3GGk280D5Zo8nEkblTIUc
         m3QoAlD352sU4rpVLZzVOznmhOdqPaqrYXnAQef8/XsIJLQseYGNqGz0oAdUTnf8vOGi
         ZYHIrS3VrhfSxHH9y2tawbPvofM4fMtbXoS/xVai20mXwgJNRCrjTjn5WL/dh9gDQ7ds
         3kNA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Q/6KoyZeoZvINpdhZNHJEzjQdUa2sVPc11gJJCEbkuAhbpSh+
	Y4m+ZELPffwyetQ39M+TkN4=
X-Google-Smtp-Source: ABdhPJxdlN05Uq0n3OO9Prn1WTxqVGUkPHvsay+MbHY2wtadAqWC8GgdvzuZ0bIhSs8P4hTyVvlvvw==
X-Received: by 2002:a0c:f6c5:: with SMTP id d5mr9082393qvo.111.1638986884773;
        Wed, 08 Dec 2021 10:08:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:f00c:: with SMTP id z12ls1594608qvk.9.gmail; Wed, 08 Dec
 2021 10:08:04 -0800 (PST)
X-Received: by 2002:a05:6214:b01:: with SMTP id u1mr9042193qvj.37.1638986884065;
        Wed, 08 Dec 2021 10:08:04 -0800 (PST)
Date: Wed, 8 Dec 2021 10:08:03 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a3dc8390-aac6-47ca-89d5-25d65a7c17e8n@googlegroups.com>
In-Reply-To: <0c84ea13-e5f5-4755-8f34-3b81dd00406cn@googlegroups.com>
References: <0c84ea13-e5f5-4755-8f34-3b81dd00406cn@googlegroups.com>
Subject: Re: hostbyte=DID_TRANSPORT_DISRUPTED: network issues or?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3530_1155251524.1638986883338"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_3530_1155251524.1638986883338
Content-Type: multipart/alternative; 
	boundary="----=_Part_3531_462158253.1638986883338"

------=_Part_3531_462158253.1638986883338
Content-Type: text/plain; charset="UTF-8"

Yes, I believe your problems are network-related.

I would advise taking iscsi NOPs off the table -- if you have a slow 
connection, the error recovery involved in a ping timeout can screw up I/O 
big time.

On Friday, November 26, 2021 at 6:52:45 AM UTC-8 Mauricio wrote:

>       Now I was able to address my issue with the testbox, I can mount the 
> LUN in that host without issues. So it is time to switch back to the 
> problem box, which started having issues since the last reboot. I apply the 
> solution used in the testbox and then restart the service:
>
> [root@problembox ~]# systemctl restart iscsi
> [root@problembox ~]#
>
> And it acts like it is happy (so far; did not check dmesg or fdisk):
>
> [root@problembox ~]# systemctl status iscsi
> o iscsi.service - Login and scanning of iSCSI devices
>    Loaded: loaded (/usr/lib/systemd/system/iscsi.service; enabled; vendor 
> preset: disabled)
>    Active: active (exited) since Thu 2021-11-25 23:21:40 EST; 9h ago
>      Docs: man:iscsiadm(8)
>            man:iscsid(8)
>   Process: 3414 ExecStart=/usr/sbin/iscsiadm -m node --loginall=automatic 
> (code=exited, status=0/SUCCESS)
>  Main PID: 3414 (code=exited, status=0/SUCCESS)
>     Tasks: 0 (limit: 203741)
>    Memory: 0B
>    CGroup: /system.slice/iscsi.service
>
> Nov 25 23:17:52 problembox systemd[1]: Starting Login and scanning of 
> iSCSI devices...
> Nov 25 23:21:40 problembox iscsiadm[3414]: Logging in to [iface: default, 
> target: iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
> 192.168.10.18,3260]
> Nov 25 23:21:40 problembox iscsiadm[3414]: Login to [iface: default, 
> target: iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
> 192.168.10.18,3260] successful.
> Nov 25 23:21:40 problembox systemd[1]: Started Login and scanning of iSCSI 
> devices.
> [root@problembox ~]#
>
> [root@problembox ~]# ls -lh /dev/sd*
> brw-rw----. 1 root disk 8,  0 Nov 25 21:42 /dev/sda
> brw-rw----. 1 root disk 8,  1 Nov 25 21:42 /dev/sda1
> brw-rw----. 1 root disk 8,  2 Nov 25 21:42 /dev/sda2
> brw-rw----. 1 root disk 8,  3 Nov 25 21:42 /dev/sda3
> brw-rw----. 1 root disk 8, 16 Nov 25 23:33 /dev/sdb
> [root@problembox ~]# ls -l /dev/disk/by-path/|grep ip
> lrwxrwxrwx. 1 root root  9 Nov 25 23:33 
> ip-192.168.10.18:3260-iscsi-iqn.2000-01.com.synology-iSCSI:storage.01-lun-0 
> -> ../../sdb
> [root@problembox ~]#
>
> Time to go probe the elephant in the room
>
> [root@problembox ~]# fdisk -l /dev/sdb
> fdisk: cannot open /dev/sdb: Input/output error
> [root@problembox ~]#
>
> What does dmesg has to tell me? The expected behaviour as seen in the 
> testbox (mounting the very same LUN):
>
> [root@testbox ~]# dmesg -T
> [...]
> [Thu Nov 25 19:58:00 2021] Loading iSCSI transport class v2.0-870.
> [Thu Nov 25 19:58:00 2021] iscsi: registered transport (tcp)
> [Thu Nov 25 19:58:00 2021] scsi host2: iSCSI Initiator over TCP/IP
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: Direct-Access     SYNOLOGY iSCSI 
> Storage    3.1  PQ: 0 ANSI: 5
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: supports implicit TPGS
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: device 
> naa.6001405e61f8c59d35fdd4481da3e1d3 port group 1 rel port 1
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: Attached scsi generic sg1 type 0
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: transition timeout set to 
> 60 seconds
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: port group 01 state A 
> non-preferred supports TOlUSNA
> [Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] 754974720 512-byte logical 
> blocks: (387 GB/360 GiB)
> [Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Write Protect is off
> [Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Mode Sense: 3b 00 00 00
> [Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Write cache: disabled, read 
> cache: enabled, doesn't support DPO or FUA
> [Thu Nov 25 19:58:00 2021]  sda: sda1
> [Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] Attached SCSI disk
> [root@testbox ~]#
>
> Behaviour seen in the problembox
>
> [root@problembox ~]# dmesg -T
> [Thu Nov 25 23:17:51 2021] scsi host8: iSCSI Initiator over TCP/IP
> [Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: Direct-Access     SYNOLOGY iSCSI 
> Storage    3.1  PQ: 0 ANSI: 5
> [Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: supports implicit TPGS
> [Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: device 
> naa.6001405e61f8c59d35fdd4481da3e1d3 port group 1 rel port 1
> [Thu Nov 25 23:17:51 2021] sd 8:0:0:0: Attached scsi generic sg1 type 0
> [Thu Nov 25 23:18:02 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4300399244, last ping 4300404736, now 4300409856
> [Thu Nov 25 23:18:02 2021]  connection4:0: detected conn error (1022)
> [...]
> [Thu Nov 25 23:31:56 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:31:56 2021] sd 8:0:0:0: [sdb] tag#76 FAILED Result: 
> hostbyte=DID_TRANSPORT_DISRUPTED driverbyte=DRIVER_OK cmd_age=72s
> [Thu Nov 25 23:31:56 2021] sd 8:0:0:0: [sdb] tag#76 CDB: Read(10) 28 00 2c 
> ff ff 80 00 00 08 00
> [Thu Nov 25 23:31:56 2021] blk_update_request: I/O error, dev sdb, sector 
> 754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
> [Thu Nov 25 23:32:10 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4301247437, last ping 4301252608, now 4301257728
> [Thu Nov 25 23:32:10 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:32:22 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4301259759, last ping 4301264896, now 4301270016
> [Thu Nov 25 23:32:22 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:32:35 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4301273035, last ping 4301278208, now 4301283328
> [Thu Nov 25 23:32:35 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:32:48 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4301285359, last ping 4301290496, now 4301295616
> [Thu Nov 25 23:32:48 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:33:00 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4301297653, last ping 4301302784, now 4301307904
> [Thu Nov 25 23:33:00 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:33:13 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4301310922, last ping 4301316096, now 4301321216
> [Thu Nov 25 23:33:13 2021]  connection4:0: detected conn error (1022)
> [Thu Nov 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 FAILED Result: 
> hostbyte=DID_TRANSPORT_DISRUPTED driverbyte=DRIVER_OK cmd_age=73s
> [Thu Nov 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 CDB: Read(10) 28 00 2c 
> ff ff 80 00 00 08 00
> [Thu Nov 25 23:33:13 2021] blk_update_request: I/O error, dev sdb, sector 
> 754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
> [Thu Nov 25 23:33:13 2021] Buffer I/O error on dev sdb, logical block 
> 94371824, async page read
> [Fri Nov 26 00:46:06 2021]  connection4:0: ping timeout of 5 secs expired, 
> recv timeout 5, last rx 4305683173, last ping 4305688576, now 4305693696
> [Fri Nov 26 00:46:06 2021]  connection4:0: detected conn error (1022)
> [root@problembox ~]#
>
> Given that problembox is a baremetal server and testbox is a vm guest in a 
> KVM server which is connected to the same switch as problembox, and that 
> problembox has been working fine for 2 years until the very last reboot, 
> are these network issues or something else.
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a3dc8390-aac6-47ca-89d5-25d65a7c17e8n%40googlegroups.com.

------=_Part_3531_462158253.1638986883338
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Yes, I believe your problems are network-related.</div><div><br></div>=
<div>I would advise taking iscsi NOPs off the table -- if you have a slow c=
onnection, the error recovery involved in a ping timeout can screw up I/O b=
ig time.<br></div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D=
"gmail_attr">On Friday, November 26, 2021 at 6:52:45 AM UTC-8 Mauricio wrot=
e:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex=
; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>=C2=
=A0 =C2=A0 =C2=A0 Now I was able to address my issue with the testbox, I ca=
n mount the LUN in that host without issues. So it is time to switch back t=
o the problem box, which started having issues since the last reboot. I app=
ly the solution used in the testbox and then restart the service:</div><div=
><br></div><div>[root@problembox ~]# systemctl restart iscsi</div><div>[roo=
t@problembox ~]#</div><div><br></div><div>And it acts like it is happy (so =
far; did not check dmesg or fdisk):</div><div><br></div><div>[root@problemb=
ox ~]# systemctl status iscsi</div><div>o iscsi.service - Login and scannin=
g of iSCSI devices</div><div>=C2=A0 =C2=A0Loaded: loaded (/usr/lib/systemd/=
system/iscsi.service; enabled; vendor preset: disabled)</div><div>=C2=A0 =
=C2=A0Active: active (exited) since Thu 2021-11-25 23:21:40 EST; 9h ago</di=
v><div>=C2=A0 =C2=A0 =C2=A0Docs: man:iscsiadm(8)</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0man:iscsid(8)</div><div>=C2=A0 Process: 3414 Exe=
cStart=3D/usr/sbin/iscsiadm -m node --loginall=3Dautomatic (code=3Dexited, =
status=3D0/SUCCESS)</div><div>=C2=A0Main PID: 3414 (code=3Dexited, status=
=3D0/SUCCESS)</div><div>=C2=A0 =C2=A0 Tasks: 0 (limit: 203741)</div><div>=
=C2=A0 =C2=A0Memory: 0B</div><div>=C2=A0 =C2=A0CGroup: /system.slice/iscsi.=
service</div><div><br></div><div>Nov 25 23:17:52 problembox systemd[1]: Sta=
rting Login and scanning of iSCSI devices...</div><div>Nov 25 23:21:40 prob=
lembox iscsiadm[3414]: Logging in to [iface: default, target: iqn.2000-01.c=
om.synology-iSCSI:storage.01, portal: 192.168.10.18,3260]</div><div>Nov 25 =
23:21:40 problembox iscsiadm[3414]: Login to [iface: default, target: iqn.2=
000-01.com.synology-iSCSI:storage.01, portal: 192.168.10.18,3260] successfu=
l.</div><div>Nov 25 23:21:40 problembox systemd[1]: Started Login and scann=
ing of iSCSI devices.</div><div>[root@problembox ~]#</div><div><br></div><d=
iv>[root@problembox ~]# ls -lh /dev/sd*</div><div>brw-rw----. 1 root disk 8=
,=C2=A0 0 Nov 25 21:42 /dev/sda</div><div>brw-rw----. 1 root disk 8,=C2=A0 =
1 Nov 25 21:42 /dev/sda1</div><div>brw-rw----. 1 root disk 8,=C2=A0 2 Nov 2=
5 21:42 /dev/sda2</div><div>brw-rw----. 1 root disk 8,=C2=A0 3 Nov 25 21:42=
 /dev/sda3</div><div>brw-rw----. 1 root disk 8, 16 Nov 25 23:33 /dev/sdb</d=
iv><div>[root@problembox ~]# ls -l /dev/disk/by-path/|grep ip</div><div>lrw=
xrwxrwx. 1 root root=C2=A0 9 Nov 25 23:33 ip-192.168.10.18:3260-iscsi-iqn.2=
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
 Nov 25 19:58:00 2021] scsi 2:0:0:0: Direct-Access=C2=A0 =C2=A0 =C2=A0SYNOL=
OGY iSCSI Storage=C2=A0 =C2=A0 3.1=C2=A0 PQ: 0 ANSI: 5</div><div>[Thu Nov 2=
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
enabled, doesn&#39;t support DPO or FUA</div><div>[Thu Nov 25 19:58:00 2021=
]=C2=A0 sda: sda1</div><div>[Thu Nov 25 19:58:00 2021] sd 2:0:0:0: [sda] At=
tached SCSI disk</div><div>[root@testbox ~]#</div><div><br></div><div>Behav=
iour seen in the problembox</div><div><br></div><div>[root@problembox ~]# d=
mesg -T</div><div><div>[Thu Nov 25 23:17:51 2021] scsi host8: iSCSI Initiat=
or over TCP/IP</div><div>[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: Direct-Ac=
cess=C2=A0 =C2=A0 =C2=A0SYNOLOGY iSCSI Storage=C2=A0 =C2=A0 3.1=C2=A0 PQ: 0=
 ANSI: 5</div><div>[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: supports =
implicit TPGS</div><div>[Thu Nov 25 23:17:51 2021] scsi 8:0:0:0: alua: devi=
ce naa.6001405e61f8c59d35fdd4481da3e1d3 port group 1 rel port 1</div><div>[=
Thu Nov 25 23:17:51 2021] sd 8:0:0:0: Attached scsi generic sg1 type 0</div=
><div>[Thu Nov 25 23:18:02 2021]=C2=A0 connection4:0: ping timeout of 5 sec=
s expired, recv timeout 5, last rx 4300399244, last ping 4300404736, now 43=
00409856</div><div>[Thu Nov 25 23:18:02 2021]=C2=A0 connection4:0: detected=
 conn error (1022)</div></div><div>[...]</div><div>[Thu Nov 25 23:31:56 202=
1]=C2=A0 connection4:0: detected conn error (1022)</div><div>[Thu Nov 25 23=
:31:56 2021] sd 8:0:0:0: [sdb] tag#76 FAILED Result: hostbyte=3DDID_TRANSPO=
RT_DISRUPTED driverbyte=3DDRIVER_OK cmd_age=3D72s</div><div>[Thu Nov 25 23:=
31:56 2021] sd 8:0:0:0: [sdb] tag#76 CDB: Read(10) 28 00 2c ff ff 80 00 00 =
08 00</div><div>[Thu Nov 25 23:31:56 2021] blk_update_request: I/O error, d=
ev sdb, sector 754974592 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0</d=
iv><div>[Thu Nov 25 23:32:10 2021]=C2=A0 connection4:0: ping timeout of 5 s=
ecs expired, recv timeout 5, last rx 4301247437, last ping 4301252608, now =
4301257728</div><div>[Thu Nov 25 23:32:10 2021]=C2=A0 connection4:0: detect=
ed conn error (1022)</div><div>[Thu Nov 25 23:32:22 2021]=C2=A0 connection4=
:0: ping timeout of 5 secs expired, recv timeout 5, last rx 4301259759, las=
t ping 4301264896, now 4301270016</div><div>[Thu Nov 25 23:32:22 2021]=C2=
=A0 connection4:0: detected conn error (1022)</div><div>[Thu Nov 25 23:32:3=
5 2021]=C2=A0 connection4:0: ping timeout of 5 secs expired, recv timeout 5=
, last rx 4301273035, last ping 4301278208, now 4301283328</div><div>[Thu N=
ov 25 23:32:35 2021]=C2=A0 connection4:0: detected conn error (1022)</div><=
div>[Thu Nov 25 23:32:48 2021]=C2=A0 connection4:0: ping timeout of 5 secs =
expired, recv timeout 5, last rx 4301285359, last ping 4301290496, now 4301=
295616</div><div>[Thu Nov 25 23:32:48 2021]=C2=A0 connection4:0: detected c=
onn error (1022)</div><div>[Thu Nov 25 23:33:00 2021]=C2=A0 connection4:0: =
ping timeout of 5 secs expired, recv timeout 5, last rx 4301297653, last pi=
ng 4301302784, now 4301307904</div><div>[Thu Nov 25 23:33:00 2021]=C2=A0 co=
nnection4:0: detected conn error (1022)</div><div>[Thu Nov 25 23:33:13 2021=
]=C2=A0 connection4:0: ping timeout of 5 secs expired, recv timeout 5, last=
 rx 4301310922, last ping 4301316096, now 4301321216</div><div>[Thu Nov 25 =
23:33:13 2021]=C2=A0 connection4:0: detected conn error (1022)</div><div>[T=
hu Nov 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 FAILED Result: hostbyte=
=3DDID_TRANSPORT_DISRUPTED driverbyte=3DDRIVER_OK cmd_age=3D73s</div><div>[=
Thu Nov 25 23:33:13 2021] sd 8:0:0:0: [sdb] tag#81 CDB: Read(10) 28 00 2c f=
f ff 80 00 00 08 00</div><div>[Thu Nov 25 23:33:13 2021] blk_update_request=
: I/O error, dev sdb, sector 754974592 op 0x0:(READ) flags 0x0 phys_seg 1 p=
rio class 0</div><div>[Thu Nov 25 23:33:13 2021] Buffer I/O error on dev sd=
b, logical block 94371824, async page read</div><div>[Fri Nov 26 00:46:06 2=
021]=C2=A0 connection4:0: ping timeout of 5 secs expired, recv timeout 5, l=
ast rx 4305683173, last ping 4305688576, now 4305693696</div><div>[Fri Nov =
26 00:46:06 2021]=C2=A0 connection4:0: detected conn error (1022)</div><div=
>[root@problembox ~]#</div><div><br></div><div>Given that problembox is a b=
aremetal server and testbox is a vm guest in a KVM server which is connecte=
d to the same switch as problembox, and that problembox has been working fi=
ne for 2 years until the very last reboot, are these network issues or some=
thing else.</div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a3dc8390-aac6-47ca-89d5-25d65a7c17e8n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a3dc8390-aac6-47ca-89d5-25d65a7c17e8n%40googlegroups.com</a>.=
<br />

------=_Part_3531_462158253.1638986883338--

------=_Part_3530_1155251524.1638986883338--
