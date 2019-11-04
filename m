Return-Path: <open-iscsi+bncBC755V5RXMKBBLNKQHXAKGQEFEVFFKA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 189A6EE4F5
	for <lists+open-iscsi@lfdr.de>; Mon,  4 Nov 2019 17:43:27 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id k9sf19385644qtg.2
        for <lists+open-iscsi@lfdr.de>; Mon, 04 Nov 2019 08:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UNZ6oXDhBY3GDC3/8hqO5t9LfoGvTKcy4Eqls9nnVqo=;
        b=kzlihrDXUXdVR8X4Zcr3d8eV3qpS/679EwiTP3+JRW/fhEe0xuToVfyPTb05VtU8vr
         nUS2g1rH/0EhZLA4jzXnZxA2anJqj1LIcpRv8anbwR6XcETl236Nodf1qixuLBPmSpeZ
         sSkRfOmJhFuHmre0U/pqEKhw/5+pSGNG42fWDDF9Ifznu/q8kPVuI75FPs1cAwy+q+Jx
         Qw2aNR1Jv6dzfUWg31o824DD1uye7/D5Y6ANnenfT+WMtdA7ghvZcyNtPr2bkyVkaZDs
         xNeE7DapMK7tfj1SKcqn3fo1+DEnl/4gFmEam4ZPjvbdek3hZ7i3LltycJJ84xpTS6Aq
         RLRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UNZ6oXDhBY3GDC3/8hqO5t9LfoGvTKcy4Eqls9nnVqo=;
        b=Wi5fyt77DtnbtF7+yCAxupPel4aeK+1I7f5Tl45Kc+hn6ptaRme5NvLAZMmbSuh0Ib
         VYyPmef1CdsQnbq0nerWTiMdgId86D5H1JLr1E5eDypfqlNkSwlsQ68hRYJGL94O2l3e
         yOyfAuEs4PyNhybxZB/0UCCewz6A0Potvwud4JlyPGRpFo5bBUuvaWnbdA1iCOqDqWEV
         TmB9dcrBrzd9EmU3lDPqof3hrc3ODVNLCTjpZQ8lziQXQDDaN5qgQVQorAbiowTeAEl5
         /t5w8eX6k/QGyIWACUzrjSlK1Ht7OwWRKze57v6osnJRKh8r1KwFmtNH1PZVTZXi5gKC
         oHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UNZ6oXDhBY3GDC3/8hqO5t9LfoGvTKcy4Eqls9nnVqo=;
        b=VqOorfdBukntOdBmsocZe0qF8RhnyHT3SroKMWpn5QR63xLugKdq23ygr7Q9Cht00F
         4PbJYFIbtQm0i4qY/HQsdGJlI0iWrqdWbPfxAKBDQxyluGfYR0Nqq2atzOMgUnXwNNDw
         jURy65rEW/bBo3EySzTY1xDtfTVKNcM5BPR+vR46MUj/c8ALh4F3FxgcUOv0OD6zLooF
         qsfW4EJO8uXw7pqI/uhEkoJ0s6Y9OOxQpneNACthbHvgIK8TGrjDv5bC8Jy6/fv/lxZx
         F0GyMe0WFrcfEwmVs6AuwvklSvSetuDmWtABPO7Kif9QPQk8wcbYliASDATMJc1s39DG
         FvRQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXWnuxw7OoQx9VOUwrMQEDmo2J03nte83d02i7NxUfRbS+vA5m9
	cSt3AFVimDhD/Jrt9AUvaiY=
X-Google-Smtp-Source: APXvYqz/svLJsGwPjumtV954MOstFJgoD1NfgT2dDqVjwGvNsy5TW+/z5PqaVmRNP93I35CAG9em7g==
X-Received: by 2002:ac8:5249:: with SMTP id y9mr12964442qtn.81.1572885806079;
        Mon, 04 Nov 2019 08:43:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:183a:: with SMTP id q55ls842505qtj.15.gmail; Mon, 04 Nov
 2019 08:43:25 -0800 (PST)
X-Received: by 2002:ac8:1109:: with SMTP id c9mr12959411qtj.10.1572885805583;
        Mon, 04 Nov 2019 08:43:25 -0800 (PST)
Date: Mon, 4 Nov 2019 08:43:24 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
In-Reply-To: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
Subject: Re: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1246_1322404685.1572885804771"
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

------=_Part_1246_1322404685.1572885804771
Content-Type: multipart/alternative; 
	boundary="----=_Part_1247_1941655089.1572885804771"

------=_Part_1247_1941655089.1572885804771
Content-Type: text/plain; charset="UTF-8"

On Monday, November 4, 2019 at 2:49:08 AM UTC-8, Bobby wrote:
>
> Hi
>
> I have two virtual machines. One is a client and other is a sever (SAN). I 
> am using Wireshark to  analyze the iSCSI protocols between them.
>
> Someone recommended me, in addition to a packet analyzer, I can also use a 
> packet generator. Any good packet generator for iSCSI client/server model?
>
> Thanks
>

Your question is not clear, but I'm *guessing*  you are asking if you can 
use some sort of software to inject iSCSI packets into your client/server 
stream, e.g. so that you can simulate errors and see how your software 
handles them?

If so, then the answer is no, there is nothing I know of.

Such "bad command injection" can be done with fancy hardware analyzers. A 
good (expensive) network analyzer can (I believe) inject bad packets of any 
type.See https://www.firewalltechnical.com/packet-injection-tools/

It sound like none of this is directly related to open-iscsi, though.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3db42c4c-1a52-4716-ae8f-fe289da32cc0%40googlegroups.com.

------=_Part_1247_1941655089.1572885804771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Monday, November 4, 2019 at 2:49:08 AM UTC-8, Bobby wro=
te:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">Hi<div><br=
></div><div>I have two virtual machines. One is a client and other is a sev=
er (SAN). I am using Wireshark to=C2=A0 analyze the iSCSI protocols between=
 them.<br></div><div><br></div><div>Someone recommended=C2=A0me, in additio=
n to a packet analyzer, I can also use a packet generator. Any good packet =
generator for iSCSI client/server model?</div><div><br></div><div>Thanks</d=
iv></div></blockquote><div><br></div><div>Your question is not clear, but I=
&#39;m <i>guessing</i>=C2=A0 you are asking if you can use some sort of sof=
tware to inject iSCSI packets into your client/server stream, e.g. so that =
you can simulate errors and see how your software handles them?</div><div><=
br></div><div>If so, then the answer is no, there is nothing I know of.</di=
v><div><br></div><div>Such &quot;bad command injection&quot; can be done wi=
th fancy hardware analyzers. A good (expensive) network analyzer can (I bel=
ieve) inject bad packets of any type.See <a href=3D"https://www.firewalltec=
hnical.com/packet-injection-tools/">https://www.firewalltechnical.com/packe=
t-injection-tools/</a></div><div><br></div><div>It sound like none of this =
is directly related to open-iscsi, though.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/3db42c4c-1a52-4716-ae8f-fe289da32cc0%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/3db42c4c-1a52-4716-ae8f-fe289da32cc0%40googlegroups.com</a>.<b=
r />

------=_Part_1247_1941655089.1572885804771--

------=_Part_1246_1322404685.1572885804771--
