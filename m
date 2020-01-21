Return-Path: <open-iscsi+bncBC24JGEJRMKRBMUCTPYQKGQEE5IAM4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D9F143938
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Jan 2020 10:15:31 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id x127sf1366048qkb.0
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Jan 2020 01:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=n0t01CPrioxrf/XlAZ4ZWnAuGZG5K6Z2EqMENsyCVHc=;
        b=lqYtxlf6AtZFXXHoYgMIVQr9FNjdhC0KLDq5kMaexFsZKIcypD/TTJxeksQvYby/y0
         tRHk6AIJzeykbww+7mrP6f1EdxFGHuxsUpCua+2URqwxakfaftDJXAAXanPwMAB+w53B
         EDYaPGkMDRNSsKh57Ai7hIUEwrSfds6dmiiO/jIgKsNY7XhVmjaAqn0s9gbh3D3UcvkV
         ehesG+8EtvXBkHFZGUAibq9YvoGSRo34TojjzvzbvjweZS5yvOO9ax6W/J2oQxTMpDWV
         xdKPlnZ1+6CXYInpGgJ2qKm0diyKxhX+8Xyy71DurzDAefZ5nN3SO8NXdfSKQ8sgGHmQ
         wa0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n0t01CPrioxrf/XlAZ4ZWnAuGZG5K6Z2EqMENsyCVHc=;
        b=bwxRJubrnAsCaXiaHp0ZzesrPyfPcTdzm8W1bVbQS8LinB2D75npSZtu35n+VvBkva
         3d53J09PmEAF8okJhMsWqijEywloXhqzWcKD3BWO+5r8L68cYot5OIB4/NvfXseOMCnY
         tB1RtrhY/oJs0wXTVs84KjRdXANcKnm9qPm/n0o+E01RbIIeKSSTpGtod4xlKPTn1NbM
         k9PxYYqOqAnMYIvcE+dDp9CsvRBiL1Fpxca1GmxzexOTcxqVBdLLatlc+GSVn0I8AA8P
         uKBMQs3ZkDvpC7fBvoWN10/aveu6+XPyK6FABh8JwbQ3F73wmUeFnLE/9EjIfES6gelr
         J2LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n0t01CPrioxrf/XlAZ4ZWnAuGZG5K6Z2EqMENsyCVHc=;
        b=Ya6zsY3zVcmta1Cp1FRRlUOZj/JWv1eadQ8Xz61bcV/k6ayy+Oyt+ySkQcoHyQ2Tih
         yfhDpYlH/6oRewN5xQB4NNd87zGZHdTsiOKZKFes9ejCv+cTsMIrhXRrAQk3+SPL2R/R
         pO/+pADPmh+1C+AWh4sRlhhVWo6KUkdt2YnBYhW+TWGsY5BmRyYYnduHTgC8/l7RnMF/
         Q65Pn/9ALCdw6hzR2HQN9Xyq5y4OUKeNAgLZcJoJSF8B+aZfa2t1te3jbw8BR3Dx5kyW
         z2l3mC6kEg0c+u/bxATsbDFoY5Cnj+IRYP4fHU++gHQb6KkHT6GyOREinIYPUOrCP4sK
         I5rg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWNKDc5GlQ6qdhOiVrEHOt9ysv3bPhCj+yO9ZTlYs7vZkN/UVi2
	n9//1lMPGpmpR79bPrKZyvY=
X-Google-Smtp-Source: APXvYqzZW3LzK77cHUONxniCepVGHDoUevTEtNBexY0Etey/M2NuWaLZctroOCpRsNPiEdoDDX+r8A==
X-Received: by 2002:a37:65c8:: with SMTP id z191mr3504135qkb.176.1579598130533;
        Tue, 21 Jan 2020 01:15:30 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:ac11:: with SMTP id e17ls413622qkm.7.gmail; Tue, 21 Jan
 2020 01:15:30 -0800 (PST)
X-Received: by 2002:a05:620a:98f:: with SMTP id x15mr3469498qkx.462.1579598130004;
        Tue, 21 Jan 2020 01:15:30 -0800 (PST)
Date: Tue, 21 Jan 2020 01:15:29 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a4d39a0a-2662-4bff-9674-d644daf608ed@googlegroups.com>
In-Reply-To: <54AD6563.4040603@suse.de>
References: <54AD5DDD.2090808@dev.mellanox.co.il>
 <54AD6563.4040603@suse.de>
Subject: Re: [LSF/MM TOPIC] iSCSI MQ adoption via MCS discussion
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1579_1307742090.1579598129312"
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

------=_Part_1579_1307742090.1579598129312
Content-Type: multipart/alternative; 
	boundary="----=_Part_1580_1339419087.1579598129313"

------=_Part_1580_1339419087.1579598129313
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have a question please. Are these todo's finally part of Open-iSCSi=20
initiator?

Thanks

On Wednesday, January 7, 2015 at 5:57:14 PM UTC+1, hare wrote:
>
> On 01/07/2015 05:25 PM, Sagi Grimberg wrote:=20
> > Hi everyone,=20
> >=20
> > Now that scsi-mq is fully included, we need an iSCSI initiator that=20
> > would use it to achieve scalable performance. The need is even greater=
=20
> > for iSCSI offload devices and transports that support multiple HW=20
> > queues. As iSER maintainer I'd like to discuss the way we would choose=
=20
> > to implement that in iSCSI.=20
> >=20
> > My measurements show that iSER initiator can scale up to ~2.1M IOPs=20
> > with multiple sessions but only ~630K IOPs with a single session where=
=20
> > the most significant bottleneck the (single) core processing=20
> > completions.=20
> >=20
> > In the existing single connection per session model, given that command=
=20
> > ordering must be preserved session-wide, we end up in a serial command=
=20
> > execution over a single connection which is basically a single queue=20
> > model. The best fit seems to be plugging iSCSI MCS as a multi-queued=20
> > scsi LLDD. In this model, a hardware context will have a 1x1 mapping=20
> > with an iSCSI connection (TCP socket or a HW queue).=20
> >=20
> > iSCSI MCS and it's role in the presence of dm-multipath layer was=20
> > discussed several times in the past decade(s). The basic need for MCS i=
s=20
> > implementing a multi-queue data path, so perhaps we may want to avoid=
=20
> > doing any type link aggregation or load balancing to not overlap=20
> > dm-multipath. For example we can implement ERL=3D0 (which is basically =
the=20
> > scsi-mq ERL) and/or restrict a session to a single portal.=20
> >=20
> > As I see it, the todo's are:=20
> > 1. Getting MCS to work (kernel + user-space) with ERL=3D0 and a=20
> >    round-robin connection selection (per scsi command execution).=20
> > 2. Plug into scsi-mq - exposing num_connections as nr_hw_queues and=20
> >    using blk-mq based queue (conn) selection.=20
> > 3. Rework iSCSI core locking scheme to avoid session-wide locking=20
> >    as much as possible.=20
> > 4. Use blk-mq pre-allocation and tagging facilities.=20
> >=20
> > I've recently started looking into this. I would like the community to=
=20
> > agree (or debate) on this scheme and also talk about implementation=20
> > with anyone who is also interested in this.=20
> >=20
> Yes, that's a really good topic.=20
>
> I've pondered implementing MC/S for iscsi/TCP but then I've figured my=20
> network implementation knowledge doesn't spread that far.=20
> So yeah, a discussion here would be good.=20
>
> Mike? Any comments?=20
>
> Cheers,=20
>
> Hannes=20
> --=20
> Dr. Hannes Reinecke                      zSeries & Storage=20
> ha...@suse.de <javascript:>                              +49 911 74053=20
> 688=20
> SUSE LINUX Products GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg=20
> GF: J. Hawn, J. Guild, F. Imend=C3=B6rffer, HRB 16746 (AG N=C3=BCrnberg)=
=20
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/a4d39a0a-2662-4bff-9674-d644daf608ed%40googlegroups.com.

------=_Part_1580_1339419087.1579598129313
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I have a question please. Are these todo&#3=
9;s finally part of Open-iSCSi initiator?<br><br>Thanks<br><br>On Wednesday=
, January 7, 2015 at 5:57:14 PM UTC+1, hare wrote:<blockquote class=3D"gmai=
l_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;=
padding-left: 1ex;">On 01/07/2015 05:25 PM, Sagi Grimberg wrote:
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
<br><a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"MPEF=
19csVAgJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;=
;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true;">h=
a...@suse.de</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0+49 911 74053 688
<br>SUSE LINUX Products GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
<br>GF: J. Hawn, J. Guild, F. Imend=C3=B6rffer, HRB 16746 (AG N=C3=BCrnberg=
)
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a4d39a0a-2662-4bff-9674-d644daf608ed%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/a4d39a0a-2662-4bff-9674-d644daf608ed%40googlegroups.com</a>.<b=
r />

------=_Part_1580_1339419087.1579598129313--

------=_Part_1579_1307742090.1579598129312--
