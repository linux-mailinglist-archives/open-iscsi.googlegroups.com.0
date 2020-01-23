Return-Path: <open-iscsi+bncBC755V5RXMKBB3FUVDYQKGQEDAKHYFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 831E014739F
	for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 23:13:01 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id j16sf2661439qkk.17
        for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 14:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZmWPCObPfXRDAzsgMIO1Zf7WEWLUAIPq2+t0NOUygQY=;
        b=WwlVmv5y+cFByfrwyZ57WPzgIZivKRjL4ksRaw7WHC22QG90SBUgMjWugjSZ23s54t
         wfhnpdWs4fg+HMszm3QHvXwscoH+coRueRz8dgmZfXZZ7PLRu2YSHnJxhu4S0iEApXeC
         9Ch1flLzAx1RNiFWGwIdJjmZHv+UEq/vamc8ndm9+ecuY6x3u4Y+5SmlxxakjmyjHhGO
         EOECH6YYmyHgOO7R8SiaYStdvhrcBIl1ZMOYnu7RHtkNTyIdvyP1c9ugnRzw6c59TVTL
         oqQyEzdNnApctGrI487txs5cDwlxUeWiwa+ncQN7ae7ZQI89zfhVRnF9bXbEc++XZZF0
         hHeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZmWPCObPfXRDAzsgMIO1Zf7WEWLUAIPq2+t0NOUygQY=;
        b=b86ZCoZ4GLxizvbnfYXnWxZi4cggRLK6gGW+nDK8+7ZKq4Sw43Mcv6aU2VpRfwmqt+
         ByY9DEvXRgU6AEhujWZKUN5scUIHJMxhuvesClPSR2IkqokUHU41WC3haYr4KK9Y4lAO
         aK8DerM6EiHNBxqbN6wrEwjcFVIMHJTUTUiLTj1zLruEawO+OmGacRklpWmJYMZItKCK
         G6hbCEegznGL9bisfA4t83zGMW/3AvjAABPeGYrFT8pgnIc2YaknNKNPgkHnhCCwaTah
         Ic++lwYfYz8YvwpVBhg4AYBQzkT6w486VgbFf1e2UrRE+yRfI7BEgFnX42cH528AewJB
         P9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZmWPCObPfXRDAzsgMIO1Zf7WEWLUAIPq2+t0NOUygQY=;
        b=VZz5fxAhsnqrqPylH0wPkAVRNWdtj5AQH6143+Dw90yu41xuMMzx4D+I4RCK93ZXyO
         oW3cpmSjDBu7yv5KY/RJtWYDbYUdx9qKmOhaOi6Wqu1Xef1fNaIpEUOFZMZ9xZwsKFt4
         zQJlqnpdVKD2iQG8hcfKSlNPqImRFTGXy/NVB+5WWZJ6AEZk0U8jFXi/Lt317ETjdRae
         293haIw+pYhfefjmg1kCI8LkxmKaPjl/oHeEJrQh0Y/2FcbJr/73288IjN4edwO/dzzX
         5Ur3fCNPknuPiFh+K7TW7yx3zmsnFMajmq/d3fxx9NJNgltL3WthYSbvMAynvRNNbDNi
         JK5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUVZXUJx+JBV/kfm91Cu5z3b132w2wAL+3TjSS4qIjyvX0CV8AY
	lG4fmZV+UQZgrfWpE9h//b0=
X-Google-Smtp-Source: APXvYqye1LL2MlOZHuDb9ehfFu2q90VIXiA5+tm9RgY2We9/z3V8+d2sPiPMg4Cw7JlW+PrMM/z9vg==
X-Received: by 2002:ac8:3463:: with SMTP id v32mr454459qtb.8.1579817580451;
        Thu, 23 Jan 2020 14:13:00 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:450b:: with SMTP id q11ls6825qtn.6.gmail; Thu, 23 Jan
 2020 14:13:00 -0800 (PST)
X-Received: by 2002:ac8:1aa6:: with SMTP id x35mr440497qtj.32.1579817579882;
        Thu, 23 Jan 2020 14:12:59 -0800 (PST)
Date: Thu, 23 Jan 2020 14:12:58 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4f57a546-6857-4a5a-968b-2b51a6e6ad68@googlegroups.com>
In-Reply-To: <a4d39a0a-2662-4bff-9674-d644daf608ed@googlegroups.com>
References: <54AD5DDD.2090808@dev.mellanox.co.il>
 <54AD6563.4040603@suse.de>
 <a4d39a0a-2662-4bff-9674-d644daf608ed@googlegroups.com>
Subject: Re: [LSF/MM TOPIC] iSCSI MQ adoption via MCS discussion
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2822_109511273.1579817578784"
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

------=_Part_2822_109511273.1579817578784
Content-Type: multipart/alternative; 
	boundary="----=_Part_2823_1718240974.1579817578785"

------=_Part_2823_1718240974.1579817578785
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



On Tuesday, January 21, 2020 at 1:15:29 AM UTC-8, Bobby wrote:
>
> Hi all,
>
> I have a question please. Are these todo's finally part of Open-iSCSi=20
> initiator?
>
> Thanks
>

No, not really. It's a "hard problem", and offload cards have somewhat=20
worked around the problem by doing all of the work in the card.=20

>
> On Wednesday, January 7, 2015 at 5:57:14 PM UTC+1, hare wrote:
>>
>> On 01/07/2015 05:25 PM, Sagi Grimberg wrote:=20
>> > Hi everyone,=20
>> >=20
>> > Now that scsi-mq is fully included, we need an iSCSI initiator that=20
>> > would use it to achieve scalable performance. The need is even greater=
=20
>> > for iSCSI offload devices and transports that support multiple HW=20
>> > queues. As iSER maintainer I'd like to discuss the way we would choose=
=20
>> > to implement that in iSCSI.=20
>> >=20
>> > My measurements show that iSER initiator can scale up to ~2.1M IOPs=20
>> > with multiple sessions but only ~630K IOPs with a single session where=
=20
>> > the most significant bottleneck the (single) core processing=20
>> > completions.=20
>> >=20
>> > In the existing single connection per session model, given that comman=
d=20
>> > ordering must be preserved session-wide, we end up in a serial command=
=20
>> > execution over a single connection which is basically a single queue=
=20
>> > model. The best fit seems to be plugging iSCSI MCS as a multi-queued=
=20
>> > scsi LLDD. In this model, a hardware context will have a 1x1 mapping=
=20
>> > with an iSCSI connection (TCP socket or a HW queue).=20
>> >=20
>> > iSCSI MCS and it's role in the presence of dm-multipath layer was=20
>> > discussed several times in the past decade(s). The basic need for MCS=
=20
>> is=20
>> > implementing a multi-queue data path, so perhaps we may want to avoid=
=20
>> > doing any type link aggregation or load balancing to not overlap=20
>> > dm-multipath. For example we can implement ERL=3D0 (which is basically=
=20
>> the=20
>> > scsi-mq ERL) and/or restrict a session to a single portal.=20
>> >=20
>> > As I see it, the todo's are:=20
>> > 1. Getting MCS to work (kernel + user-space) with ERL=3D0 and a=20
>> >    round-robin connection selection (per scsi command execution).=20
>> > 2. Plug into scsi-mq - exposing num_connections as nr_hw_queues and=20
>> >    using blk-mq based queue (conn) selection.=20
>> > 3. Rework iSCSI core locking scheme to avoid session-wide locking=20
>> >    as much as possible.=20
>> > 4. Use blk-mq pre-allocation and tagging facilities.=20
>> >=20
>> > I've recently started looking into this. I would like the community to=
=20
>> > agree (or debate) on this scheme and also talk about implementation=20
>> > with anyone who is also interested in this.=20
>> >=20
>> Yes, that's a really good topic.=20
>>
>> I've pondered implementing MC/S for iscsi/TCP but then I've figured my=
=20
>> network implementation knowledge doesn't spread that far.=20
>> So yeah, a discussion here would be good.=20
>>
>> Mike? Any comments?=20
>>
>> Cheers,=20
>>
>> Hannes=20
>> --=20
>> Dr. Hannes Reinecke                      zSeries & Storage=20
>> ha...@suse.de                              +49 911 74053 688=20
>> SUSE LINUX Products GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg=20
>> GF: J. Hawn, J. Guild, F. Imend=C3=B6rffer, HRB 16746 (AG N=C3=BCrnberg)=
=20
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/4f57a546-6857-4a5a-968b-2b51a6e6ad68%40googlegroups.com.

------=_Part_2823_1718240974.1579817578785
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, January 21, 2020 at 1:15:29 AM UTC-8, =
Bobby wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">H=
i all,<br><br>I have a question please. Are these todo&#39;s finally part o=
f Open-iSCSi initiator?<br><br>Thanks<br></div></blockquote><div><br></div>=
<div>No, not really. It&#39;s a &quot;hard problem&quot;, and offload cards=
 have somewhat worked around the problem by doing all of the work in the ca=
rd. <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"=
><br>On Wednesday, January 7, 2015 at 5:57:14 PM UTC+1, hare wrote:<blockqu=
ote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1=
px #ccc solid;padding-left:1ex">On 01/07/2015 05:25 PM, Sagi Grimberg wrote=
:
<br>&gt; Hi everyone,
<br>&gt;=20
<br>&gt; Now that scsi-mq is fully included, we need an iSCSI initiator tha=
t
<br>&gt; would use it to achieve scalable performance. The need is even gre=
ater
<br>&gt; for iSCSI offload devices and transports that support multiple HW
<br>&gt; queues. As iSER maintainer I&#39;d like to discuss the way we woul=
d choose
<br>&gt; to implement that in iSCSI.
<br>&gt;=20
<br>&gt; My measurements show that iSER initiator can scale up to ~2.1M IOP=
s
<br>&gt; with multiple sessions but only ~630K IOPs with a single session w=
here
<br>&gt; the most significant bottleneck the (single) core processing
<br>&gt; completions.
<br>&gt;=20
<br>&gt; In the existing single connection per session model, given that co=
mmand
<br>&gt; ordering must be preserved session-wide, we end up in a serial com=
mand
<br>&gt; execution over a single connection which is basically a single que=
ue
<br>&gt; model. The best fit seems to be plugging iSCSI MCS as a multi-queu=
ed
<br>&gt; scsi LLDD. In this model, a hardware context will have a 1x1 mappi=
ng
<br>&gt; with an iSCSI connection (TCP socket or a HW queue).
<br>&gt;=20
<br>&gt; iSCSI MCS and it&#39;s role in the presence of dm-multipath layer =
was
<br>&gt; discussed several times in the past decade(s). The basic need for =
MCS is
<br>&gt; implementing a multi-queue data path, so perhaps we may want to av=
oid
<br>&gt; doing any type link aggregation or load balancing to not overlap
<br>&gt; dm-multipath. For example we can implement ERL=3D0 (which is basic=
ally the
<br>&gt; scsi-mq ERL) and/or restrict a session to a single portal.
<br>&gt;=20
<br>&gt; As I see it, the todo&#39;s are:
<br>&gt; 1. Getting MCS to work (kernel + user-space) with ERL=3D0 and a
<br>&gt; =C2=A0 =C2=A0round-robin connection selection (per scsi command ex=
ecution).
<br>&gt; 2. Plug into scsi-mq - exposing num_connections as nr_hw_queues an=
d
<br>&gt; =C2=A0 =C2=A0using blk-mq based queue (conn) selection.
<br>&gt; 3. Rework iSCSI core locking scheme to avoid session-wide locking
<br>&gt; =C2=A0 =C2=A0as much as possible.
<br>&gt; 4. Use blk-mq pre-allocation and tagging facilities.
<br>&gt;=20
<br>&gt; I&#39;ve recently started looking into this. I would like the comm=
unity to
<br>&gt; agree (or debate) on this scheme and also talk about implementatio=
n
<br>&gt; with anyone who is also interested in this.
<br>&gt;=20
<br>Yes, that&#39;s a really good topic.
<br>
<br>I&#39;ve pondered implementing MC/S for iscsi/TCP but then I&#39;ve fig=
ured my
<br>network implementation knowledge doesn&#39;t spread that far.
<br>So yeah, a discussion here would be good.
<br>
<br>Mike? Any comments?
<br>
<br>Cheers,
<br>
<br>Hannes
<br>--=20
<br>Dr. Hannes Reinecke=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0zSeries &=
amp; Storage
<br><a rel=3D"nofollow">ha...@suse.de</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0+49 911 7405=
3 688
<br>SUSE LINUX Products GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
<br>GF: J. Hawn, J. Guild, F. Imend=C3=B6rffer, HRB 16746 (AG N=C3=BCrnberg=
)
<br></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4f57a546-6857-4a5a-968b-2b51a6e6ad68%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/4f57a546-6857-4a5a-968b-2b51a6e6ad68%40googlegroups.com</a>.<b=
r />

------=_Part_2823_1718240974.1579817578785--

------=_Part_2822_109511273.1579817578784--
