Return-Path: <open-iscsi+bncBC755V5RXMKBBEH37CPQMGQEDQYETFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id B72206A5E62
	for <lists+open-iscsi@lfdr.de>; Tue, 28 Feb 2023 18:44:50 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id t22-20020ac86a16000000b003bd1c0f74cfsf5030750qtr.20
        for <lists+open-iscsi@lfdr.de>; Tue, 28 Feb 2023 09:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O0Ue/1V1GZ5jus2zH7wKLy2np+JPBHCJ5SLc9w7Gxcg=;
        b=smtQujoWgoZsg8f+xCmz5t/SN+z7HU2tdJ9y3oeAvG15kEKZS7lRxDalX62bQI4Dwi
         F+TkGUZFlOalzT2nsnybzJ5gMZex4hO/Olcqx3ARYtGTKPk2pclPY2KpZhMn5Gc4/5wy
         ioyDYoKHLf+PuLOtHoXwEfk96xyfMmU93UVimWE8bZZLjTtUwHuutgGTlN48Noo7Cqfx
         CvCPJHULiY8TU1VqJJYPntsyENbnryD1Eiglt1mrD4sOrDNgSRbFy7cMrT4Xy11H6k6R
         3MSyHXbx2tL2vFqk1tUy0FBE90ykkFpinwc7kLCPiFbJ/tGXbaJzkW0tmK1MtrWB6YPJ
         2kng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=O0Ue/1V1GZ5jus2zH7wKLy2np+JPBHCJ5SLc9w7Gxcg=;
        b=Pi7v7uS5JqHWZQOxYA5xlYs13qBmZzFs1HqxL9MEgUg3PXzrx4D4D/OqvLz8vuI0cJ
         NeWzTAo/WDWpXxvgqXKAaUwIKWgxe/GngbW8edXoPlCSy4FvzUwgs1bUZ66TbUnoHPza
         n9Ag2yeAi97rd+ADtXzUqPS/jFdq6/fqQpR+FGm3SpeoJK82DlgmY/cAhnZxsKmXa0Xq
         IOSRr2lw8jyQRPSu8rNbKfN3kUSpNw4FAz/vhgfQdEqyGXda+6KifndGr+IyKzuqeRC3
         EG+Lz5SnIUq7IBdOXwOvSZhswtTU4SXWWq6YWs1yAtkP12pxR9zAswkDBzFrSm5RF8vN
         FSHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0Ue/1V1GZ5jus2zH7wKLy2np+JPBHCJ5SLc9w7Gxcg=;
        b=Y/e8XLicHqvwEThR5ROl7hDoL0uh/6pNKM4ZZAWA4QlQcOt7eloY8x5pUDZMCod61R
         WSzc1mHMjRqbD4SdOHx8awjOGGM9gLxmZ/MfeAD9yCrXyFLG4AZbzvDpr7DaiF4fQklA
         amLErUsM0+si3CTvm+5HZslctNrE3yTVPgb9fqrryRyoxRDr9caguhDXNN3RQb1/LV0u
         l2Aq+Hp503SYtveIquEiB47wtf2SVPAQnuDNwdGBglQQzvBp0feSFKPTVZQDJf4ZCzH+
         kAZ+ZM8wAhK33OFsTkvuqm004FmcZqDMFzWXEYh2ax6us1uqtZbaakPDamWER6Elw/9Q
         HgEQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUKsECtoKD6XyPN3XLR/9BdwwU1fz7UMwqNd/pxkywuOhGbrkrZ
	IaU/kwo8/vYaOR0f1K7qIfU=
X-Google-Smtp-Source: AK7set/PTKBt92BPWaELHmytJTCIIVVnRoRy9+tgQeQyC7+xpR0Rzy2ohDQ7qIFwaw4IXZnzu11BCw==
X-Received: by 2002:a05:620a:46a2:b0:72b:25b4:565f with SMTP id bq34-20020a05620a46a200b0072b25b4565fmr5070272qkb.5.1677606289454;
        Tue, 28 Feb 2023 09:44:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:2714:b0:73b:9f41:ffe3 with SMTP id
 b20-20020a05620a271400b0073b9f41ffe3ls2977691qkp.1.-pod-prod-gmail; Tue, 28
 Feb 2023 09:44:48 -0800 (PST)
X-Received: by 2002:a05:620a:4447:b0:71f:b8f8:f3db with SMTP id w7-20020a05620a444700b0071fb8f8f3dbmr1589882qkp.1.1677606287926;
        Tue, 28 Feb 2023 09:44:47 -0800 (PST)
Date: Tue, 28 Feb 2023 09:44:47 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f49ba61e-199e-46f3-9d7b-74f1f42ba922n@googlegroups.com>
Subject: RFC: Making iSNS and SLP discovery code optional in open-iscsi?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13928_903256509.1677606287441"
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

------=_Part_13928_903256509.1677606287441
Content-Type: multipart/alternative; 
	boundary="----=_Part_13929_1223266944.1677606287441"

------=_Part_13929_1223266944.1677606287441
Content-Type: text/plain; charset="UTF-8"

Hi All:

I posted an issue on github about this, but I wanted to mention it here, as 
well.

As part of trying to make open-iscsi "container-ized", I have been looking 
at how to make the iscsi executable footprint smaller.

As part of that, I have been looking first at shared libraries being used 
by iscsid and iscsiadm. Of particular interest are libisns and libslp.

Open-iscsi uses both iSNS and SLP as optional discovery methods, instead of 
using "Send Targets". But neither of these are used much, and in particular 
the SLP code isn't even functional, as far as I know. (Yes, I need to test 
it.)

So I will soon submit a pull request to github making the meson build 
system have options to skip building iSNS and/or SLP discovery code.

I have a working prototype, but I need to clean it up before submitting it. 
For example, the man page will have to be updated to mention that these 
things are optional at build time. (It should do that now for systemd, but 
our man pages currently don't mention systemd at all.)

My belief is that making iSNS and SLP usage optional will benefit some of 
the users of open-iscsi, particularly when looking for a lightweight 
solution.

Anyone else think so?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f49ba61e-199e-46f3-9d7b-74f1f42ba922n%40googlegroups.com.

------=_Part_13929_1223266944.1677606287441
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All:</div><div><br /></div><div>I posted an issue on github about t=
his, but I wanted to mention it here, as well.</div><div><br /></div><div>A=
s part of trying to make open-iscsi "container-ized", I have been looking a=
t how to make the iscsi executable footprint smaller.</div><div><br /></div=
><div>As part of that, I have been looking first at shared libraries being =
used by iscsid and iscsiadm. Of particular interest are libisns and libslp.=
</div><div><br /></div><div>Open-iscsi uses both iSNS and SLP as optional d=
iscovery methods, instead of using "Send Targets". But neither of these are=
 used much, and in particular the SLP code isn't even functional, as far as=
 I know. (Yes, I need to test it.)</div><div><br /></div><div>So I will soo=
n submit a pull request to github making the meson build system have option=
s to skip building iSNS and/or SLP discovery code.</div><div><br /></div><d=
iv>I have a working prototype, but I need to clean it up before submitting =
it. For example, the man page will have to be updated to mention that these=
 things are optional at build time. (It should do that now for systemd, but=
 our man pages currently don't mention systemd at all.)</div><div><br /></d=
iv><div>My belief is that making iSNS and SLP usage optional will benefit s=
ome of the users of open-iscsi, particularly when looking for a lightweight=
 solution.</div><div><br /></div><div>Anyone else think so?<br /></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f49ba61e-199e-46f3-9d7b-74f1f42ba922n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/f49ba61e-199e-46f3-9d7b-74f1f42ba922n%40googlegroups.com</a>.=
<br />

------=_Part_13929_1223266944.1677606287441--

------=_Part_13928_903256509.1677606287441--
