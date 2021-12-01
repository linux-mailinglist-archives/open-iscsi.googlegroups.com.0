Return-Path: <open-iscsi+bncBC6MFJWO34DBBVNZTSGQMGQEMWWJFCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D62D46477E
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Dec 2021 07:57:26 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id c15-20020a05651200cf00b0040524451deesf9018145lfp.20
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Nov 2021 22:57:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638341846; cv=pass;
        d=google.com; s=arc-20160816;
        b=IE0dIVoGXVtZne6mKsu8ZRC/2YzrN3ErSBuI/ybayWO/Ooq9wO6MSCcaH/TAAKrTP9
         5ej9dbOZ1aHcMU2YvHSWfPx3lkzFrPSOS0PZpgJQ6SiwQLlb3wvRcWzUS6kE5S81GXOg
         d0hO/S4fYYa8cnEKgt2g5Jqg9Ekubd14VIaMJSgzxdv+5BguwA/330iXiQEDiCJ4OM/u
         esAYz+bJq2Gf5bFB0sRWAYeuJJykP6i7cZoMtY2/1BuHfXKgbzwyLd/X/XZOJ+l2E2AK
         MpwgkMFUqY+Dv6fSzWpTDB+bxyGhtZ5bmocMnA0AMiBpkujqNw9+VOVx/Ih1DB2pkjr8
         UXlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=irs9yxgAhtdpTrK61k9YejaJ0RZQtxfmdjHYWxjQZzo=;
        b=R4UPuHmbVWniqVlwJZOWpMG47a9RZ5pv/7XA1McWGTl+gU+SU6HXMB1zDcwnT1azYI
         VpHYTh+6vI28Rx+6w8II0U33kSkWy7sDGRtd1K7PCPeIvYSkN3wys5c7vRaGjimg15hp
         A9InVPCzRz1lhXwfftuqJK54fL4F0owOm6fBj5YW3hZuKfAGa7A/E5oCgXQjvh5KxwH+
         gP5zoGA6SZWMk2X7/cJG5pn3ElirGngDCRkmsn/APntwSbOkV2quzNYpoSmul14fK3na
         bBQMoHpkhrkbl2Z4U/B7a91AikQeKWNyfTtfiN6y+q+GIThxOPbISXWgFLOVjWOoR+cf
         gQdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=irs9yxgAhtdpTrK61k9YejaJ0RZQtxfmdjHYWxjQZzo=;
        b=sDBD3NGmq/ALq4qyU04RUejz2ABUSGHRkKk/v9l1hTRuCfIbttK276wm2fH8CbkX1n
         dcwG3PfGVh/1BhFBK9akC6394fgPn2Ri0C2JrLtKSFp3BpGmJApiZXpmM2Aoz6r/3nf1
         smmxMdZiMFWeveIsCA0iU74oFTSuAX7GAan+D0C+RdryGzuStqIluc5FZsY7q7VwT+Uy
         arBgdLYwtUK3QJUM+4Ip1/qwpQNauqLyt/1vNC9ZIDmB7RS9piB8eT1W9SubomKBLuXo
         DBAHpNzlQ7Ag7/UA6Ma5CkQOdxf+hvGJv6CaiHp5idA5g7e+QCg+gKwWptWgX710kCii
         m8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=irs9yxgAhtdpTrK61k9YejaJ0RZQtxfmdjHYWxjQZzo=;
        b=Qg1jpf50P/D7b+dvAmekOtVm064j8KM/1EQaO60s6FinjeNpkMepb+Um7BKn6pPRTC
         GxjQJ+Yh/pA1Q32qdO1GRjGmqqdEhUF8n6Td5fn66mErV1OyOithF2K7L6eSqpzt0ZFT
         ZmD1raGcY+FPyzvCk9t7UKEarQE3BFPwIYmV+AU+dB3UiKH79He8Pw31tpPQAQ8VSaN3
         eaw6QXVAwowPQLQlsBO38EgQQptVYjiR2UqWwEnw5gd/mLd4qSY0iGAZ/tO2fQBNPlrT
         Q7zrjev786w5NNIzDKDCrBvUNW/BM9eoBEb2LzkKIxZkhLWPLGmq/0KE7VaYDVAF/2KP
         mraA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53175+d/OqraaV+VQm4b/+dWdburIx24k7OiV3beToJJA2xtPrWg
	FZgJpFviezDEFeCokhU/Ojw=
X-Google-Smtp-Source: ABdhPJxsH/ztwMTDNn92xYQCoxrAQ8T9t8HX2HYO0EJfvMboRU+v8Lx3vxt0kXBwNjIecX4A1F54qQ==
X-Received: by 2002:a2e:7819:: with SMTP id t25mr3863363ljc.374.1638341846172;
        Tue, 30 Nov 2021 22:57:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:1320:: with SMTP id x32ls733678lfu.2.gmail; Tue, 30
 Nov 2021 22:57:25 -0800 (PST)
X-Received: by 2002:a05:6512:3250:: with SMTP id c16mr4137451lfr.123.1638341845157;
        Tue, 30 Nov 2021 22:57:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638341845; cv=none;
        d=google.com; s=arc-20160816;
        b=E+2wT7GPqKe9W/aArIfgXx5eGrxZyhAFnATiSBfTqp1sZpTY2Dr2qHq7gZVTMi9Iey
         7ZY4H7K4VRx0ijQ/Hn/eyyVTtqeLS0VbjgB/1yTbc1WR8U8I21nKwsLpnxP4Rp32fkjz
         gpKYQPdayboTIZrL9kfDmwOP7Qa33FSyUsSK+5T7+JVW999JMxd+50YKQJ+bkxOb76vU
         sMu/ESM4jPPL+zJXyTgHH3f82BV2uksFTiRvOQYZ502hjGJ0TzNUlIyORGCxGUNxg1qk
         NdasAzoC97O9kZ28j2lfZaGCbXqzlr6hOFX5hjuYTZQO31GGLL8lcDmuV13/m59Dmrde
         ch5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=eJ4Ly0r563Lq6kGZoVHpcGXZdopg8KAVIfhYELlyJF4=;
        b=Jd0+ae0djWueWTwsn4tmPXFbfvqpuPmG0wijHiT3mQtug8ZDYkVjzmqiyDGJ6GHf65
         fQQfPyDHlkhg8OlcE3LHw37NJkbEP1mxnz94HvlH2PEQ6uJqMQW5K31vcUgLH/eR2Iip
         cgja9yo2Ve0rfJz+EDbbsVYH7VprOx8QFgWjXgpct8we4tt+cahMBbzy4MHMRHu2oNyj
         rs3pk5kXCK7kqRoc33R1gtb8s27GEpwVAXh4tnsdlEeVQoj6GbVixjFPu0qrJ1MX24RW
         GffQhwMURiV8sMrLoNZRwpZKnfnkSDtHJUYzqV2ufPWwGRoTqs6OP0oDAu8pT4p0PvVs
         +PXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e79])
        by gmr-mx.google.com with ESMTPS id b29si1660390ljf.6.2021.11.30.22.57.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Nov 2021 22:57:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e79;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 864D6600004D
	for <open-iscsi@googlegroups.com>; Wed,  1 Dec 2021 07:57:23 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id 417206000047
	for <open-iscsi@googlegroups.com>; Wed,  1 Dec 2021 07:57:23 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 01 Dec 2021 07:57:23 +0100
Message-Id: <61A71CD1020000A100045ED8@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Wed, 01 Dec 2021 07:57:21 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] hostbyte=DID_TRANSPORT_DISRUPTED: network issues
 or?
References: <0c84ea13-e5f5-4755-8f34-3b81dd00406cn@googlegroups.com>
In-Reply-To: <0c84ea13-e5f5-4755-8f34-3b81dd00406cn@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

      >>> Mauricio <raubvogel@gmail.com> schrieb am 26.11.2021 um 15:52 in Nachricht
<0c84ea13-e5f5-4755-8f34-3b81dd00406cn@googlegroups.com>:
> Now I was able to address my issue with the testbox, I can mount the 
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
> Nov 25 23:17:52 problembox systemd[1]: Starting Login and scanning of iSCSI 
> devices...
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
> [Thu Nov 25 19:58:00 2021] scsi 2:0:0:0: alua: transition timeout set to 60 
> seconds
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

Did you notice: You are testing sdb, but the messages above are for sda!

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
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/0c84ea13-e5f5-4755-8f34-3b81dd00 
> 406cn%40googlegroups.com.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/61A71CD1020000A100045ED8%40gwsmtp.uni-regensburg.de.
