Return-Path: <open-iscsi+bncBC5LJAFHUIPRB6EU6KDAMGQENMU645A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F3F3B861E
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 17:15:06 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id f15-20020ac8470f0000b0290251637aa292sf1285186qtp.10
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 08:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jsdD+5MJd7gSp681NrFmCY1hSU5Nxklh6jGyOyzvLYQ=;
        b=oDS1GPJERMIIFBXk9xSUxOZRxN09LhaWQgXuMeO1mNVS09kvlv7xSkiozw+nXcOhkY
         zbOOoQkrEf4yjNeo4pTvihwcV+6+trH9n9OB/Ow6tJAsuqrJxgP3qEKN9it2WuKXprnQ
         bTCpHZh1ZUtXXdy0DZSECH+7bDHd4iX1UMP4gOurOH+EragLQSv5xb7GD9C556Bp7jHG
         9RGpeKa4jIU9tmLhtKzNnQvBh0up4fiwo58uYTBGTUx4U/+QGaEmXQRXoXIBFt721FHu
         AsvxUSIxdpEM5ThSKP4N2FqzKdc4+YQxRw/pGSvSPqcqcD9QM/gfY2h/R5yMA6bX/0rv
         vGZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=4cgroup-co-za.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsdD+5MJd7gSp681NrFmCY1hSU5Nxklh6jGyOyzvLYQ=;
        b=FsPUX6lAYOtajgVaQxaOG07JjLiexLHribaKrqGapPFfsgLrxfbjLANTQiZ5IbK+q0
         7HTB+OfCHrVdqfu3K0Y+cZeV9whprd5wIXCHTXBNP1RSyM0eQzQvFEeJldjFmtrXdagm
         /u9WeaqG5dHynZCrxzj9GILa4IIEHXfj3RLDhvlWUqVlIeCxAKuW2k2wHvvAfe55dWQT
         bGueq/EmjTset3tf/1yLZzICbxXl5tzYppvKwzyLpxMvDUojOXPsUMI7We4IYe+v9KLy
         hXLi2vb1IpmWuDC5BejUdT19d6zv03CHPL3vZwFjVyC3DDQlickl7658G66umDIf8jeX
         cc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsdD+5MJd7gSp681NrFmCY1hSU5Nxklh6jGyOyzvLYQ=;
        b=fHc2dh7YhEEFve7KRhEuYYONtkIYH8D3VM3enaU6aeTKPuEmJIiS3PQpZtYPvt5xE6
         1FC8kZ+j33Wx6N3aT9BYrpP7XzVm24bM0f7lDPJirOButbEYdPk+knYr7aoI/vWU01fa
         GgWoFvjO2NwSQddU3ifKCrhYuI9eluwiMKidrUbFAzeZ9gWkvkzS/Jl886EQ5QmHIBBk
         /AcUoaKXvORTmURQQlzJCXP3fePC6dNEmGqRW4ZUQYU1OXObIbEqm2j/ZsMNE+6KY5G2
         ekgMj8RcQhSpZjvPn6qtFeB4Mg7s3R06l+J+WI3Fsgc7EPyGWvD3W0YT7PofLHK5cLpV
         wEiA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533PUsnreMLa/MYNdPlCQqoxETEfZzoXahxj2okwim5cv2QbONB4
	XlBi5SrfRIaHOcI6p+hm01M=
X-Google-Smtp-Source: ABdhPJyEbANsNlRJ5KbvayrBbJLSKjBUHS3GfJvip5LjmcTwlOu6HDaHGsVpEJEh3OdXeJifaWFB1A==
X-Received: by 2002:ad4:40c1:: with SMTP id x1mr16395654qvp.33.1625066105168;
        Wed, 30 Jun 2021 08:15:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e814:: with SMTP id a20ls1624290qkg.4.gmail; Wed, 30 Jun
 2021 08:15:04 -0700 (PDT)
X-Received: by 2002:a05:620a:ed2:: with SMTP id x18mr21382911qkm.181.1625066104313;
        Wed, 30 Jun 2021 08:15:04 -0700 (PDT)
Date: Wed, 30 Jun 2021 08:15:03 -0700 (PDT)
From: Riaan Pretorius <riaan.pretorius@4cgroup.co.za>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>
In-Reply-To: <B3425A37-BF5B-48DE-A3DB-3DFC856F19E7@comcast.net>
References: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
 <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
 <B3425A37-BF5B-48DE-A3DB-3DFC856F19E7@comcast.net>
Subject: Re: Antw: [EXT] ISCSI Target and Initiator on same host
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_668_764876277.1625066103632"
X-Original-Sender: riaan.pretorius@4cgroup.co.za
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

------=_Part_668_764876277.1625066103632
Content-Type: multipart/alternative; 
	boundary="----=_Part_669_1972753190.1625066103632"

------=_Part_669_1972753190.1625066103632
Content-Type: text/plain; charset="UTF-8"

I get strange messages in my logs when i tried do that. and get disk 
"flapping" when the disk just appear and reappear continuously after a 
reboot.   logically it would make sense that you can do this, but 
practically  there is weird issues. Would you guys say it might be a 
misconfiguration ?

On Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:

>
>
> > On Jun 30, 2021, at 7:29 AM, Ulrich Windl <
> Ulrich...@rz.uni-regensburg.de> wrote:
> > 
> > I think I did that about 10 years ago...
> > 
> >>>> Riaan Pretorius <riaan.p...@4cgroup.co.za> schrieb am 30.06.2021 um 
> 12:41
> > in Nachricht <07b30064-72b3-42c1...@googlegroups.com>:
> >> I have an interesting question to ask:
> >> 
> >> Is it possible to share the target on the same server as a initiator ?
> >> e.g. server1: target -> server1: initiator 
>
> Yes, I've used that in a test setup when I needed to put a file system on 
> iSCSI (to test pNFS).
>
> paul
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f3e8a3df-cfb2-4913-b518-e01a801614dbn%40googlegroups.com.

------=_Part_669_1972753190.1625066103632
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I get strange messages in my logs when i tried do that. and get disk "flapp=
ing" when the disk just appear and reappear continuously after a reboot.&nb=
sp; &nbsp;logically it would make sense that you can do this, but practical=
ly&nbsp; there is weird issues. Would you guys say it might be a misconfigu=
ration ?<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail=
_attr">On Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:<br/>=
</div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>
<br>&gt; On Jun 30, 2021, at 7:29 AM, Ulrich Windl &lt;<a href data-email-m=
asked rel=3D"nofollow">Ulrich...@rz.uni-regensburg.de</a>&gt; wrote:
<br>&gt;=20
<br>&gt; I think I did that about 10 years ago...
<br>&gt;=20
<br>&gt;&gt;&gt;&gt; Riaan Pretorius &lt;<a href data-email-masked rel=3D"n=
ofollow">riaan.p...@4cgroup.co.za</a>&gt; schrieb am 30.06.2021 um 12:41
<br>&gt; in Nachricht &lt;<a href data-email-masked rel=3D"nofollow">07b300=
64-72b3-42c1...@googlegroups.com</a>&gt;:
<br>&gt;&gt; I have an interesting question to ask:
<br>&gt;&gt;=20
<br>&gt;&gt; Is it possible to share the target on the same server as a ini=
tiator ?
<br>&gt;&gt; e.g. server1: target -&gt; server1: initiator=20
<br>
<br>Yes, I&#39;ve used that in a test setup when I needed to put a file sys=
tem on iSCSI (to test pNFS).
<br>
<br>	paul
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f3e8a3df-cfb2-4913-b518-e01a801614dbn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/f3e8a3df-cfb2-4913-b518-e01a801614dbn%40googlegroups.com</a>.=
<br />

------=_Part_669_1972753190.1625066103632--

------=_Part_668_764876277.1625066103632--
