Return-Path: <open-iscsi+bncBC755V5RXMKBB7FYY3XQKGQEWIERXFY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id C57B011C2AE
	for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 02:48:45 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id s9sf398985qkg.21
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 17:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hPtLob8R2Wm97mIlcLhJ6mr2eKy9tdaykwf3s3W2DH4=;
        b=mpnKW0MUSYvyJfAaa+nPoIVXFdDgpGhmLrSB4qEqTnBe+Lutql2c8JQsPG1yZ0OxY2
         QQEmmGezDbOyP+1wus2Dlne2Lt4G8Uaj9/9SLyWt3wH34DeX1+Wxy372FBcLwHQcgAkx
         fSU4QaCxC9eCmH7YnusdXJIybgxv2bnam5im7ssbZ8cPOAxrpVdBbr+NaTYZo+3yl9pZ
         oRBUZM+3sjdDyxiN2RsPMCQTt5tEEcKDVlknOoc7gcMYpOzFuGmZtKgeeuE3eCScgwJn
         ocgKHxMYfLy9TCTksbQtwspCapuYdDJ8NISUSGe7fWy6IjdWYUZ4/cDDee1GguXWI+0t
         4M+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hPtLob8R2Wm97mIlcLhJ6mr2eKy9tdaykwf3s3W2DH4=;
        b=Bst5Ao0WFsShE6mFlIrbFBmzpSTxkleue5II176/NtmReuusLVubQuXQWLvbOVUA1r
         M7aVuCHg0UtluFKZeJLkdJZmhsM3fup46S/RVQV1q5lbrk3qQXsFLfXErqaYjHyX720F
         0rP+brvhgq0B6zZw6Nu2Y7GOV8wSfmgl3GSwVyilrgBQnaEeHBkXKZlil5eXVDCWk1t5
         VNMQva8RNQhPEUHEm2GYExea9Mvqx6uAKd5OGnPwjMI7NyOGDQGpvaGt+N0Uu06uMCnA
         XorS0uBAu3OHtjqR6AYRyLc7V7mLh/JP4t1RiJ1XbBzHI2cMPd8TQ49I1lYuSwRWqa5u
         vbqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hPtLob8R2Wm97mIlcLhJ6mr2eKy9tdaykwf3s3W2DH4=;
        b=hUcM5wUec/9f9D2hFZbcAO8QPxF+4WRZ1oCSlkhiVLY0noZRkiauEfPkHd4sRUzFpM
         TRz6ez0J88stOZrhO2AhBrNxjtsIVs7sutvamGczu4wm0zBu5FBnLBN57OU1rOuzCL+7
         f5QDatfGXqYAICZUc/43yIG19lVloRkg8Jc2iGvwdcSdPanyeZUrKuRLAja/O9j/hQzo
         cFZm+OldFXf7iBVF5Yet6/FtJd6hlaeC9W5OmeQgjoH88VU4tuPN9hTwkpKL9ugXAnwH
         5V78OZzUAHl6e6I40HnqYU26A/vEIJPKS2sfQpDkiutUxK4LAbfEuP8U3PKC5HfG0nh8
         NKjA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUieNZ9cLXWo3AW7A+IEBSF/A7hxTtWkG+P5jzAp2Hhx+Tzw+iv
	vzeh2ES7TRGlDowlmt1j0MM=
X-Google-Smtp-Source: APXvYqyJc9VHfbSgJ/nqI9/wYec/EnRVVoor0HXJQJAfgr4z0RArq+JZkny0h8J+tp3OUnt5eOBn4w==
X-Received: by 2002:a0c:9476:: with SMTP id i51mr5971164qvi.75.1576115324248;
        Wed, 11 Dec 2019 17:48:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:e288:: with SMTP id r8ls685547qvl.2.gmail; Wed, 11 Dec
 2019 17:48:43 -0800 (PST)
X-Received: by 2002:a05:6214:4f2:: with SMTP id cl18mr6091567qvb.89.1576115323707;
        Wed, 11 Dec 2019 17:48:43 -0800 (PST)
Date: Wed, 11 Dec 2019 17:48:42 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e3a64e35-ac06-4e2d-a397-1e6f53ab25e7@googlegroups.com>
In-Reply-To: <66d69bcc-1650-4df8-86dc-ad631d4da5c4@googlegroups.com>
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
 <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
 <5DC3F334020000A100034E56@gwsmtp.uni-regensburg.de>
 <1972273e-83e5-4e7f-9c76-00d0deb31185@googlegroups.com>
 <ac95713b-ca5e-47f5-ad64-96ff6c43196a@googlegroups.com>
 <bae3a7e2-306b-4959-9f8a-62bb6ae6fb00@googlegroups.com>
 <66d69bcc-1650-4df8-86dc-ad631d4da5c4@googlegroups.com>
Subject: Re: Re: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5063_759206213.1576115323105"
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

------=_Part_5063_759206213.1576115323105
Content-Type: multipart/alternative; 
	boundary="----=_Part_5064_363147239.1576115323105"

------=_Part_5064_363147239.1576115323105
Content-Type: text/plain; charset="UTF-8"

On Tuesday, December 10, 2019 at 4:20:28 AM UTC-8, Bobby wrote:
>
>
> Like above, can you please give me more hints/clues in which other code(s) 
> I need to see. Which part of this gigantic MQ-Block layer code base to see 
> to understand the complete data flow? I am particularly interested in Hash 
> , Map data structures. 
>

No, not really.

There are many great resources for learning about the kernel and its 
drivers, and the block layer. For example, join lwn.net and checkout 
https://lwn.net/Articles/736534/

And there are many great books, such as Linux Kernel Development.

>
>
> On Tuesday, December 10, 2019 at 11:34:49 AM UTC+1, Bobby wrote:
>>
>>
>> Perfect ! After this reply, I had to dig deeper and now it makes 
>> sense....thanks a lot The Lee-Man for explaining it so effectively...
>>
>>
>> On Saturday, November 9, 2019 at 7:52:52 PM UTC+1, The Lee-Man wrote:
>>>
>>> On Friday, November 8, 2019 at 10:40:08 AM UTC-8, Bobby wrote:
>>>>
>>>>
>>>> Hi Ulrich,
>>>>
>>>> Thanks for the hint. Can you please help me regarding following two 
>>>> questions. 
>>>>
>>>> - Linux block layer perform IO scheduling IO submissions to storage 
>>>> device driver. If there is a physical device, the block layer interacts 
>>>> with it through SCSI mid layer and SCSI low level drivers. So, how 
>>>> *actually* a software initiator (*Open-iSCSI*) interacts with "*block 
>>>> layer*"? 
>>>>
>>>> - What confuses me, where does the "*disk driver*" comes into play?
>>>>
>>>> Thanks :-)
>>>>
>>>>
>>> In an iSCSI connection (session), there is the initiator and the target. 
>>> I assume you are talking about the initiator.
>>>
>>> On the initiator, the "magic" is done by the kernel, in particular the 
>>> iSCSI initiator code in the kernel, specifically by the 
>>> scsi_transport_iscsi.c in drivers/scsi. When an iSCSI connection is made, 
>>> the code creates a new "host" object, and then tests the device at the 
>>> other end of the connection. If it's a disc drive, then an instance of sd 
>>> is created (the disc driver). If the device is tape, a tape driver is 
>>> instantiated (st). Unrecognized devices still get a generic SCSI device 
>>> node, I believe.
>>>
>>> So, in this way, iSCSI is acting like an adapter driver, which plugs 
>>> into the SCSI mid-layer.
>>>
>>> You can run "sudo journalctl -xe --follow" in one window, then log into 
>>> an existing target in another (I used "sudo iscsiadm -m node -l"), and you 
>>> should see this kind of output from journalctl:
>>>
>>> ...
>>>
>>>  
>>>
>>>> Nov 09 10:46:59 linux-dell kernel: iscsi: registered transport (tcp)
>>>> Nov 09 10:46:59 linux-dell kernel: scsi host3: iSCSI Initiator over 
>>>> TCP/IP
>>>> Nov 09 10:46:59 linux-dell iscsid[13175]: iscsid: Connection1:0 to 
>>>> [target: iqn.2003-01.org.linux-iscsi.linux-dell.x8664:sn.2a6e21b1b53c, 
>>>> portal: 192.168.20.3,3260] through [iface: default] is operational now
>>>> Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: Direct-Access     
>>>> LIO-ORG  test-disc        4.0  PQ: 0 ANSI: 5
>>>> Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: alua: supports 
>>>> implicit and explicit TPGS
>>>> Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: alua: device 
>>>> naa.6001405de01c6e7933b414e901e22b0f port group 0 rel port 1
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: Attached scsi generic 
>>>> sg1 type 0
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] 2097152 512-byte 
>>>> logical blocks: (1.07 GB/1.00 GiB)
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Write Protect is 
>>>> off
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Mode Sense: 43 00 
>>>> 10 08
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Write cache: 
>>>> enabled, read cache: enabled, supports DPO and FUA
>>>> Nov 09 10:46:59 linux-dell kernel: 
>>>> iSCSI/iqn.1996-04.de.suse:01:54cab487975b: Unsupported SCSI Opcode 0xa3, 
>>>> sending CHECK_CONDITION.
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Optimal transfer 
>>>> size 8388608 bytes
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Attached SCSI disk
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: alua: transition timeout 
>>>> set to 60 seconds
>>>> Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: alua: port group 00 
>>>> state A non-preferred supports TOlUSNA
>>>>
>>>    ... 
>>>
>>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e3a64e35-ac06-4e2d-a397-1e6f53ab25e7%40googlegroups.com.

------=_Part_5064_363147239.1576115323105
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, December 10, 2019 at 4:20:28 AM UTC-8, Bobby w=
rote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8e=
x;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><br>Like=
 above, can you please give me more hints/clues in which other code(s) I ne=
ed to see. Which part of this gigantic MQ-Block layer code base to see to u=
nderstand the complete data flow? I am particularly interested in Hash , Ma=
p data structures.=C2=A0</div></blockquote><div><br></div><div>No, not real=
ly.</div><div><br></div><div>There are many great resources for learning ab=
out the kernel and its drivers, and the block layer. For example, join lwn.=
net and checkout <a href=3D"https://lwn.net/Articles/736534/">https://lwn.n=
et/Articles/736534/</a></div><div><br></div><div>And there are many great b=
ooks, such as Linux Kernel Development.<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;p=
adding-left: 1ex;"><div dir=3D"ltr"><div><br><br>On Tuesday, December 10, 2=
019 at 11:34:49 AM UTC+1, Bobby wrote:<blockquote class=3D"gmail_quote" sty=
le=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><br>Perfect ! After this reply, I had to dig deeper and=
 now it makes sense....thanks a lot The Lee-Man for explaining it so effect=
ively...<br><br><br>On Saturday, November 9, 2019 at 7:52:52 PM UTC+1, The =
Lee-Man wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-le=
ft:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">On F=
riday, November 8, 2019 at 10:40:08 AM UTC-8, Bobby wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr"><br>Hi Ulrich,<br><br>Thanks for th=
e hint. Can you please help me regarding following two questions.=C2=A0<br>=
<br><div><div>-=20

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
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">...</blockquote><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Nov 09 10:46:59 linux-dell kernel: iscsi:=
 registered transport (tcp)<br>Nov 09 10:46:59 linux-dell kernel: scsi host=
3: iSCSI Initiator over TCP/IP<br>Nov 09 10:46:59 linux-dell iscsid[13175]:=
 iscsid: Connection1:0 to [target: iqn.2003-01.org.linux-iscsi.<wbr>linux-d=
ell.x8664:sn.<wbr>2a6e21b1b53c, portal: 192.168.20.3,3260] through [iface: =
default] is operational now<br>Nov 09 10:46:59 linux-dell kernel: scsi 3:0:=
0:0: Direct-Access=C2=A0=C2=A0=C2=A0=C2=A0 LIO-ORG=C2=A0 test-disc=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4.0=C2=A0 PQ: 0 ANSI: 5<br>Nov 09 10:46:5=
9 linux-dell kernel: scsi 3:0:0:0: alua: supports implicit and explicit TPG=
S<br>Nov 09 10:46:59 linux-dell kernel: scsi 3:0:0:0: alua: device naa.<wbr=
>6001405de01c6e7933b414e901e22b<wbr>0f port group 0 rel port 1<br>Nov 09 10=
:46:59 linux-dell kernel: sd 3:0:0:0: Attached scsi generic sg1 type 0<br>N=
ov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] 2097152 512-byte logica=
l blocks: (1.07 GB/1.00 GiB)<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0=
:0: [sdb] Write Protect is off<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0=
:0:0: [sdb] Mode Sense: 43 00 10 08<br>Nov 09 10:46:59 linux-dell kernel: s=
d 3:0:0:0: [sdb] Write cache: enabled, read cache: enabled, supports DPO an=
d FUA<br>Nov 09 10:46:59 linux-dell kernel: iSCSI/iqn.1996-04.de.suse:01:<w=
br>54cab487975b: Unsupported SCSI Opcode 0xa3, sending CHECK_CONDITION.<br>=
Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Optimal transfer size =
8388608 bytes<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: [sdb] Attac=
hed SCSI disk<br>Nov 09 10:46:59 linux-dell kernel: sd 3:0:0:0: alua: trans=
ition timeout set to 60 seconds<br>Nov 09 10:46:59 linux-dell kernel: sd 3:=
0:0:0: alua: port group 00 state A non-preferred supports TOlUSNA<br></bloc=
kquote><div>=C2=A0=C2=A0 ... <br></div><br></div></div></blockquote></div><=
/blockquote></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/e3a64e35-ac06-4e2d-a397-1e6f53ab25e7%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/e3a64e35-ac06-4e2d-a397-1e6f53ab25e7%40googlegroups.com</a>.<b=
r />

------=_Part_5064_363147239.1576115323105--

------=_Part_5063_759206213.1576115323105--
