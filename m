Return-Path: <open-iscsi+bncBC755V5RXMKBBBMWTTXAKGQEUKNYRJQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id B45A8F60E1
	for <lists+open-iscsi@lfdr.de>; Sat,  9 Nov 2019 19:52:54 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id x186sf2732168qke.13
        for <lists+open-iscsi@lfdr.de>; Sat, 09 Nov 2019 10:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yxkpmL1KbRKCGDQv6TKzYUuDlNZBtCTzkEe0jDkB7bg=;
        b=ncqxEMkQC9GGbj4+I2JNNWRswuSsNCLovjjrZDgzMA6VrywUENvzEyMPjPqEIsEWz3
         +J4IgnWYxhSkHGYWjVWymgIZTN1qglqOkqlA1DIh8MwB5d4hyPt+8rKzf5HPbYX9QPql
         z9xvYmCfcCbjBgOYHS3AGM9mMfyZUxN1gu5tOJrp+vFMsp4jpLeWuib0npwT58OV0XT7
         N/AvzCi4jBA4uDXZdU1mCybNO8MNCPHLVC9kFqVzTcgeOCn7F+w7C418AjfP92F3NM79
         DruVVVDLolU6ETo6MTDN66evWdBXWLLxKsVja8oBetxPVGHiHIhINgOeT3pUK2mowGpY
         3kpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yxkpmL1KbRKCGDQv6TKzYUuDlNZBtCTzkEe0jDkB7bg=;
        b=twjhlxYCbsQq5cUyzUfLoI3VNJyTHsyFqIZkI1dq9rf+Y1RNgDQR1yBP27nSpz67LM
         6A3Jj0fMtYCdEZiIuxnAv11nkxPLwOi22Kepj1jBt/18hy6BshMNOXV/Qucng4tlOgJY
         5EqiuOQ8NUZnNzGO911r6XXAuu1JlfhnkAsh8dkJ9JCvEd4KUwLi0qfLhAkdW5WMwyQv
         TiX5VVCjNPKeJzOaOsAEUmNd4qgf/cVyqfDpx7UmSMfyYDG12pGW9d66wZm51XU8HCp5
         XalaI1QLAYsKRi7prDbYvmIYxx+C+GCaQgdWjbI9uDt+B6ZjvsSYkzyWjXPp+DY8mqmH
         Vp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yxkpmL1KbRKCGDQv6TKzYUuDlNZBtCTzkEe0jDkB7bg=;
        b=IrlJaFhg5zyNttdTHCXnfE8mCgTAVhutQKTqNTriEDf+stotYGvL5niPUmMW7O4vD8
         eB1yvPDxhAsCwG+uuUNnumOAhX4BVOcMeqx8K0IHarzTUxnISNmNaHRMv0spxujc0gGm
         lXGFiUcxjPfbvqdn9JL5EscnRGf/Sw3D24rbLgAYBuRpYHUP9wHTBTM1cFdMnKqkf1oN
         w4Ntk8AWETJca5Eg8Tg29sgS0SYtsBLBlfKNnuXixUmNUoKGJnKoPdPVmSy7kuLcE72V
         zzbgNPPs/6NydqWfRAMfxWnZKaf3iGFAqnbBONc99yYH1xE3q9Bdrv4CdT7NsjXRxh0i
         4ObA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVWO6yXKxzAgbnUroAKsT//ihrhg22cXRfxbFKQ4WSZPUwIRex2
	JPbvZmB7/j5Pa6VNK3FKUWI=
X-Google-Smtp-Source: APXvYqz7q5rNDyOzWfSmHsz0nKBxvo76wB1izXXIO5sz8XdOVc/h/lYlRipzylFAtv6peYr+whi0sw==
X-Received: by 2002:a05:620a:984:: with SMTP id x4mr2623601qkx.373.1573325573433;
        Sat, 09 Nov 2019 10:52:53 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls540752qkn.0.gmail; Sat, 09 Nov
 2019 10:52:52 -0800 (PST)
X-Received: by 2002:ae9:f804:: with SMTP id x4mr2919660qkh.284.1573325572725;
        Sat, 09 Nov 2019 10:52:52 -0800 (PST)
Date: Sat, 9 Nov 2019 10:52:51 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <ac95713b-ca5e-47f5-ad64-96ff6c43196a@googlegroups.com>
In-Reply-To: <1972273e-83e5-4e7f-9c76-00d0deb31185@googlegroups.com>
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
 <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
 <5DC3F334020000A100034E56@gwsmtp.uni-regensburg.de>
 <1972273e-83e5-4e7f-9c76-00d0deb31185@googlegroups.com>
Subject: Re: Re: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2816_775761502.1573325572119"
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

------=_Part_2816_775761502.1573325572119
Content-Type: multipart/alternative; 
	boundary="----=_Part_2817_1297501862.1573325572119"

------=_Part_2817_1297501862.1573325572119
Content-Type: text/plain; charset="UTF-8"

On Friday, November 8, 2019 at 10:40:08 AM UTC-8, Bobby wrote:
>
>
> Hi Ulrich,
>
> Thanks for the hint. Can you please help me regarding following two 
> questions. 
>
> - Linux block layer perform IO scheduling IO submissions to storage device 
> driver. If there is a physical device, the block layer interacts with it 
> through SCSI mid layer and SCSI low level drivers. So, how *actually* a 
> software initiator (*Open-iSCSI*) interacts with "*block layer*"? 
>
> - What confuses me, where does the "*disk driver*" comes into play?
>
> Thanks :-)
>
>
In an iSCSI connection (session), there is the initiator and the target. I 
assume you are talking about the initiator.

On the initiator, the "magic" is done by the kernel, in particular the 
iSCSI initiator code in the kernel, specifically by the 
scsi_transport_iscsi.c in drivers/scsi. When an iSCSI connection is made, 
the code creates a new "host" object, and then tests the device at the 
other end of the connection. If it's a disc drive, then an instance of sd 
is created (the disc driver). If the device is tape, a tape driver is 
instantiated (st). Unrecognized devices still get a generic SCSI device 
node, I believe.

So, in this way, iSCSI is acting like an adapter driver, which plugs into 
the SCSI mid-layer.

You can run "sudo journalctl -xe --follow" in one window, then log into an 
existing target in another (I used "sudo iscsiadm -m node -l"), and you 
should see this kind of output from journalctl:

...

 

> Nov 09 10:46:59 linux-dell kernel: iscsi: registered transport (tcp)
> Nov 09 10:46:59 linux-dell kernel: scsi host3: iSCSI Initiator over TCP/IP
> Nov 09 10:46:59 linux-dell iscsid[13175]: iscsid: Connection1:0 to 
> [target: iqn.2003-01.org.linux-iscsi.linux-dell.x8664:sn.2a6e21b1b53c, 
> portal: 192.168.20.3,3260] through [iface: default] is operational now
> Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: Direct-Access     
> LIO-ORG  test-disc        4.0  PQ: 0 ANSI: 5
> Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: alua: supports implicit 
> and explicit TPGS
> Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: alua: device 
> naa.6001405de01c6e7933b414e901e22b0f port group 0 rel port 1
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: Attached scsi generic sg1 
> type 0
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] 2097152 512-byte 
> logical blocks: (1.07 GB/1.00 GiB)
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Write Protect is off
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Mode Sense: 43 00 10 
> 08
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Write cache: enabled, 
> read cache: enabled, supports DPO and FUA
> Nov 09 10:46:59 linux-dell kernel: 
> iSCSI/iqn.1996-04.de.suse:01:54cab487975b: Unsupported SCSI Opcode 0xa3, 
> sending CHECK_CONDITION.
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Optimal transfer size 
> 8388608 bytes
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Attached SCSI disk
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: alua: transition timeout 
> set to 60 seconds
> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: alua: port group 00 state A 
> non-preferred supports TOlUSNA
>
   ... 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ac95713b-ca5e-47f5-ad64-96ff6c43196a%40googlegroups.com.

------=_Part_2817_1297501862.1573325572119
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, November 8, 2019 at 10:40:08 AM UTC-8, Bobby wr=
ote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><br>Hi Ul=
rich,<br><br>Thanks for the hint. Can you please help me regarding followin=
g two questions.=C2=A0<br><br><div><div>-=20

Linux block layer perform IO scheduling IO submissions to storage device dr=
iver. If there is a physical device, the block layer interacts with it thro=
ugh SCSI mid layer and SCSI low level drivers. So, how *actually* a softwar=
e initiator (<b>Open-iSCSI</b>) interacts with &quot;<b>block layer</b>&quo=
t;?=C2=A0</div><div><br></div><div>- What confuses me, where does the &quot=
;<b>disk driver</b>&quot; comes into play?<br><br>Thanks :-)</div></div><br=
></div></blockquote><div><br></div><div>In an iSCSI connection (session), t=
here is the initiator and the target. I assume you are talking about the in=
itiator.</div><div><br></div><div>On the initiator, the &quot;magic&quot; i=
s done by the kernel, in particular the iSCSI initiator code in the kernel,=
 specifically by the scsi_transport_iscsi.c in drivers/scsi. When an iSCSI =
connection is made, the code creates a new &quot;host&quot; object, and the=
n tests the device at the other end of the connection. If it&#39;s a disc d=
rive, then an instance of sd is created (the disc driver). If the device is=
 tape, a tape driver is instantiated (st). Unrecognized devices still get a=
 generic SCSI device node, I believe.</div><div><br></div><div>So, in this =
way, iSCSI is acting like an adapter driver, which plugs into the SCSI mid-=
layer.</div><div><br></div><div>You can run &quot;sudo journalctl -xe --fol=
low&quot; in one window, then log into an existing target in another (I use=
d &quot;sudo iscsiadm -m node -l&quot;), and you should see this kind of ou=
tput from journalctl:<br></div><div><br></div><div><blockquote class=3D"gma=
il_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(20=
4, 204, 204); padding-left: 1ex;">...</blockquote><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: =
1px solid rgb(204, 204, 204); padding-left: 1ex;">Nov 09 10:46:59 linux-del=
l kernel: iscsi: registered transport (tcp)<br>Nov 09 10:46:59 linux-dell k=
ernel: scsi host3: iSCSI Initiator over TCP/IP<br>Nov 09 10:46:59 linux-del=
l iscsid[13175]: iscsid: Connection1:0 to [target: iqn.2003-01.org.linux-is=
csi.linux-dell.x8664:sn.2a6e21b1b53c, portal: 192.168.20.3,3260] through [i=
face: default] is operational now<br>Nov 09 10:46:59 linux-dell kernel: scs=
i 3:0:0:0: Direct-Access=C2=A0=C2=A0=C2=A0=C2=A0 LIO-ORG=C2=A0 test-disc=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4.0=C2=A0 PQ: 0 ANSI: 5<br>Nov 09 1=
0:46:59 linux-dell kernel: scsi 3:0:0:0: alua: supports implicit and explic=
it TPGS<br>Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: alua: device na=
a.6001405de01c6e7933b414e901e22b0f port group 0 rel port 1<br>Nov 09 10:46:=
59 linux-dell kernel: sd 3:0:0:0: Attached scsi generic sg1 type 0<br>Nov 0=
9 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] 2097152 512-byte logical bl=
ocks: (1.07 GB/1.00 GiB)<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: =
[sdb] Write Protect is off<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0=
: [sdb] Mode Sense: 43 00 10 08<br>Nov 09 10:46:59 linux-dell kernel: sd 3:=
0:0:0: [sdb] Write cache: enabled, read cache: enabled, supports DPO and FU=
A<br>Nov 09 10:46:59 linux-dell kernel: iSCSI/iqn.1996-04.de.suse:01:54cab4=
87975b: Unsupported SCSI Opcode 0xa3, sending CHECK_CONDITION.<br>Nov 09 10=
:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Optimal transfer size 8388608 b=
ytes<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Attached SCSI =
disk<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: alua: transition tim=
eout set to 60 seconds<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: al=
ua: port group 00 state A non-preferred supports TOlUSNA<br></blockquote><d=
iv>=C2=A0=C2=A0 ... <br></div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ac95713b-ca5e-47f5-ad64-96ff6c43196a%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/ac95713b-ca5e-47f5-ad64-96ff6c43196a%40googlegroups.com</a>.<b=
r />

------=_Part_2817_1297501862.1573325572119--

------=_Part_2816_775761502.1573325572119--
