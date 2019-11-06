Return-Path: <open-iscsi+bncBC24JGEJRMKRBC4ARXXAKGQEKZXFYMA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DDDF2111
	for <lists+open-iscsi@lfdr.de>; Wed,  6 Nov 2019 22:50:05 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id a129sf26218396qkg.22
        for <lists+open-iscsi@lfdr.de>; Wed, 06 Nov 2019 13:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HhZy+0HNM5vdpminWpvnN/0nnVP0S20VycnDDxMtegM=;
        b=Gfc0nVbTn7WIG3wOqIX4h/nC4Jed8A6mowhnIt4YZK6jm/3vTts8bjsQyVPvHrushe
         44qTTPppZCbVzSFPckjOY2XJLor8tP1DsMdepgc/WPSUT6iZNPojYXS2bhuhNNT4R/ay
         ZxDxnK1in3C7Q8k+V9nwcra4NwUY/DBbGseZxeae5haJ6FpBKdv3savHkAGdhN+Tm1c8
         10Eh4bSx5oInNE9fFSfEzzT8mmECMVYgC/tb04KOz4dBT/RNAcaVA8uAwASO4ZDUtx72
         zZB3rOPu7QoO3WeR0RQ1e4oaHBF4TIqAp+pcB2X09kJVQIkhzHDMc1JmT3N0xlP1eD9x
         kgxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HhZy+0HNM5vdpminWpvnN/0nnVP0S20VycnDDxMtegM=;
        b=Mcqys9Xc0iYMwmH7XBQBv3mLjBz65Iwok6iIPSjKCf74qTrd0QGcTntRgIpY7I0hd+
         TBoPcMLxiFWl/RAhfVWVYtE7H4GM266xaeOTsFK20sZpeo22vEsAs9y8oHTcnXXXvHp1
         caSjz0OlrVM45K+Kg4nD1eN+AdsbAexN86dtAPj75W2jiSGPRYIHhIBUjwytZcMhBB0i
         Gc/foME7jzwwBIiYG99k+IBiBnxk95dzd3q2XOikPKRD0XJALRvH2cqqvgYOijkJdsIt
         iHAI62P5o67ekq/4U2o96avPuwEI7DyAdMjrVKNIi5YP5AKo9kRLatpyEWCoKlfDWrfs
         zwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HhZy+0HNM5vdpminWpvnN/0nnVP0S20VycnDDxMtegM=;
        b=UbHoX5TIOAw1glAj41vrFpjyGzmClbDBfrZ+NyKxO56rAKDnktQilVLpYB03RP/cCJ
         9SMuWEHYX/TYdV2Yyq9mzUPbsmudPFK1xiZUPHJSGpaItyhPX+LyrWS7xnEWcKtswB/d
         NAtQzqxizJvuxvKALpS5Gj0maGkD3ZnRQ2GhuyQK7IF6UXksQs/q9YV3PrYdzsdWHENf
         YmDMPaDhfKyUSZURoV+0iWEYkhlA925oLFiB7N1JFPGQccAt6mp8RPybH2ZLY5NmKsvh
         EiqdT5LHkET80xTooLFqLAbf5Ic8MWuvxba7t+aeSwGcK+IXjMJ1oMffcGePlwZ4YWi0
         9a6Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAU+tYL1rrjtopAAJC+0fplbvGbNvhhELaVnQiNGC+fKLV/XFqNK
	LP6s/Qz+3px0bRGMviW2FYE=
X-Google-Smtp-Source: APXvYqx5YNrS4EY6L8koTqGET285ebp9+SNfXAGEw//ypb6YUKvpIAXChZGyAkUaqPUY3CpbtREJAg==
X-Received: by 2002:ac8:724f:: with SMTP id l15mr207810qtp.234.1573077004014;
        Wed, 06 Nov 2019 13:50:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:386:: with SMTP id q6ls1268332qkm.13.gmail; Wed, 06
 Nov 2019 13:50:03 -0800 (PST)
X-Received: by 2002:ae9:ec01:: with SMTP id h1mr4111162qkg.377.1573077003341;
        Wed, 06 Nov 2019 13:50:03 -0800 (PST)
Date: Wed, 6 Nov 2019 13:50:02 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <7fe0dd60-7da1-4027-9f1e-c5c717c94ddd@googlegroups.com>
In-Reply-To: <CAK3e-Eamy-nQLNqruGuUDcOd1cF4nmGQ8GqBxCnuuy4rrM7cpQ@mail.gmail.com>
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <CAK3e-Eamy-nQLNqruGuUDcOd1cF4nmGQ8GqBxCnuuy4rrM7cpQ@mail.gmail.com>
Subject: Re: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2445_1373745008.1573077002758"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_2445_1373745008.1573077002758
Content-Type: multipart/alternative; 
	boundary="----=_Part_2446_550673630.1573077002758"

------=_Part_2446_550673630.1573077002758
Content-Type: text/plain; charset="UTF-8"

Hi Donald,
Hi Lee-man,

Thanks for the reply. Both replies were helpful and both replies actually 
clarified my concepts. And I realized, the question was not clear....You 
were kind enough to reply in detail even when the question of was not clear 
!

*The Lee-man*, your guess was right. I was thinking something like that and 
I realized it makes no sense.

*Donald*: Yes, you are right. I took this point of yous "*then doing normal 
I/O to that iSCSI disk will provide all the traffic you will typically need*"....the 
wireshark showed me ! 

I'm a complete novice in Open-iSCSI yet very much interested in it. Please 
excuse my simple questions. It is written, Open-iSCSI acts as "*kernel 
driver*" between "*block layer*" and "*network layer*". Therefore 
following two questions:

- Linux block layer perform IO scheduling IO submissions to storage device 
driver. If there is a physical device, the block layer interacts with it 
through SCSI mid layer and SCSI low level drivers. So, how *actually* a 
software initiator (*Open-iSCSI*) interacts with "*block layer*"?  I will 
be really grateful if you can explain me. 

- What confuses me, where does the "*disk driver*" comes into play?

Thanks :-)

On Monday, November 4, 2019 at 2:32:00 PM UTC+1, Donald Williams wrote:
>
> Hello, 
>
>  Can you provide a little more info?   iSCSI is for storage, so unless 
> your 'server' is running an iSCSI target service there won't be 'iSCSI' 
> traffic to monitor.  
>
>  If you do have an iSCSI service running then providing a disk via that 
> service to the 'client' then doing normal I/O to that iSCSI disk will 
> provide all the traffic you will typically need.  I.e. discovering the 
> device, formatting the disk, doing writes and reads, etc.  
>
>  What is it that you are trying to do?   iSCSI is the transport for SCSI 
> commands over a network.   You can use SCSI tools to generate SCSI commands 
> to that disk, then the iSCSI initiator on the 'client' will create the 
> respective iSCSI packets. 
>
>  Regards,
> Don 
>
>
>
>
> On Mon, Nov 4, 2019 at 5:49 AM Bobby <italien...@gmail.com <javascript:>> 
> wrote:
>
>> Hi
>>
>> I have two virtual machines. One is a client and other is a sever (SAN). 
>> I am using Wireshark to  analyze the iSCSI protocols between them.
>>
>> Someone recommended me, in addition to a packet analyzer, I can also use 
>> a packet generator. Any good packet generator for iSCSI client/server model?
>>
>> Thanks
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups 
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to open-...@googlegroups.com <javascript:>.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com 
>> <https://groups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com?utm_medium=email&utm_source=footer>
>> .
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7fe0dd60-7da1-4027-9f1e-c5c717c94ddd%40googlegroups.com.

------=_Part_2446_550673630.1573077002758
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Donald,<div>Hi Lee-man,<br><br>Thanks for the reply. Bo=
th replies were helpful and both replies actually clarified my concepts. An=
d I realized, the question was not clear....You were kind enough to reply i=
n detail even when the question of was not clear !</div><div><br></div><div=
><b>The Lee-man</b>, your guess was right. I was thinking something like th=
at and I realized it makes no sense.</div><div><br></div><div><b>Donald</b>=
: Yes, you are right. I took this point of yous &quot;<b><i>then doing norm=
al I/O to that iSCSI disk will provide all the traffic you will typically n=
eed</i></b>&quot;....the wireshark showed me !=C2=A0</div><div><br></div><d=
iv>I&#39;m a complete novice in Open-iSCSI yet very much interested in it. =
Please excuse=C2=A0my simple questions. It is written, Open-iSCSI acts as &=
quot;<b>kernel driver</b>&quot; between &quot;<b>block layer</b>&quot; and =
&quot;<b>network layer</b>&quot;. Therefore following=C2=A0two questions:<b=
r><br>-=20

Linux block layer perform IO scheduling IO submissions to storage device dr=
iver. If there is a physical device, the block layer interacts with it thro=
ugh SCSI mid layer and SCSI low level drivers. So, how *actually* a softwar=
e initiator (<b>Open-iSCSI</b>) interacts with &quot;<b>block layer</b>&quo=
t;?=C2=A0 I will be really grateful if you can explain me.=C2=A0</div><div>=
<br>- What confuses me, where does the &quot;<b>disk driver</b>&quot; comes=
 into play?<br><br>Thanks :-)</div><br>On Monday, November 4, 2019 at 2:32:=
00 PM UTC+1, Donald Williams wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;"><div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>=C2=A0Can you provid=
e a little more info?=C2=A0 =C2=A0iSCSI is for storage, so unless your &#39=
;server&#39; is running an iSCSI target service there won&#39;t be &#39;iSC=
SI&#39; traffic to monitor.=C2=A0=C2=A0</div><div><br></div><div>=C2=A0If y=
ou do have an iSCSI service running then providing a disk via that service =
to the &#39;client&#39; then doing normal I/O to that iSCSI disk will provi=
de all the traffic you will typically need.=C2=A0 I.e. discovering=C2=A0the=
 device, formatting the disk, doing writes and reads, etc.=C2=A0=C2=A0</div=
><div><br></div><div>=C2=A0What is it that you are trying to do?=C2=A0 =C2=
=A0iSCSI is the transport for SCSI commands over a network.=C2=A0 =C2=A0You=
 can use SCSI tools to generate SCSI commands to that disk, then the iSCSI =
initiator=C2=A0on the &#39;client&#39; will create the respective iSCSI pac=
kets.=C2=A0</div><div><br></div><div>=C2=A0Regards,</div><div>Don=C2=A0</di=
v><div><br></div><div><br></div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr">On Mon, Nov 4, 2019 at 5:49 AM Bobby &lt;<a href=
=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"PaUJeCTsAQAJ" r=
el=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return tru=
e;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true;">italien...@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi<div><br></div><div>I have two virtual machines.=
 One is a client and other is a sever (SAN). I am using Wireshark to=C2=A0 =
analyze the iSCSI protocols between them.<br></div><div><br></div><div>Some=
one recommended=C2=A0me, in addition to a packet analyzer, I can also use a=
 packet generator. Any good packet generator for iSCSI client/server model?=
</div><div><br></div><div>Thanks</div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
PaUJeCTsAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">open-...@<wbr>googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank" rel=3D"nof=
ollow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/op=
en-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com?utm_medium=
\x3demail\x26utm_source\x3dfooter&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a7=
6-db621b01bcaf%40googlegroups.com?utm_medium\x3demail\x26utm_source\x3dfoot=
er&#39;;return true;">https://groups.google.com/d/<wbr>msgid/open-iscsi/8a8=
9dcdb-<wbr>8fae-4c97-9a76-db621b01bcaf%<wbr>40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/7fe0dd60-7da1-4027-9f1e-c5c717c94ddd%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/7fe0dd60-7da1-4027-9f1e-c5c717c94ddd%40googlegroups.com</a>.<b=
r />

------=_Part_2446_550673630.1573077002758--

------=_Part_2445_1373745008.1573077002758--
