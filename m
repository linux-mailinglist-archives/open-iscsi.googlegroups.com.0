Return-Path: <open-iscsi+bncBC755V5RXMKBBXFA6DDAMGQEZPIVU4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yx1-xb13e.google.com (mail-yx1-xb13e.google.com [IPv6:2607:f8b0:4864:20::b13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DECBAE248
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 19:16:15 +0200 (CEST)
Received: by mail-yx1-xb13e.google.com with SMTP id 956f58d0204a3-635472b7ef5sf275457d50.0
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 10:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1759252574; x=1759857374; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3TcRY4BQ921KuIfL02VQoBiKVH8DmtkmEOWQHqiiV8s=;
        b=xxpleyuzpg7JrtK6NSf1GueN4ihRMjX+/ACm/tLUvcftu+ABgfByEpGfrT7q7jaMIK
         GytdmRvzQTjjw7QmwW1e63ZDdYpfslw6fRXzC3KAfR178vy5Xgb2YieAAO2ygYaSMgmu
         ZXfu4hyv7RIdTnKXljeumaoN5BnLs3NbF6WMQginv3ofOtWX8EQvcLI26HNBI9fKGcbq
         fTkq2CHE457wcixah090+SvTN4G+lShX1apD6M7h6TalhlaM4IsA4vDdH3fNn4ChFrkT
         u837wVadhwxunlBcpgT34ty4546WmmcmeQmnRP82q2FsNpFAMDM6T8CjJ9q0aKO3HloV
         xUpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759252574; x=1759857374; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3TcRY4BQ921KuIfL02VQoBiKVH8DmtkmEOWQHqiiV8s=;
        b=d7sV/p7QcgkqsmFPiRUq+fKKtcAtQaDq8g5pse44xh9CzanXZ+uO7lTtK/5FJQCHox
         DILlRswe/3YMhBIAZe8NLmjMgNUEEz/92VU7eoyd6csw3dDTlod7jmm46gkxrDaR3yqa
         09VgL+PHokeKGMqVPGOir1g98cbJu7yQ5cbWpTmsMEwrNQJxnacwVQjo9W6SZPiR7YSP
         9uk3Y+L++9arf8uhuwlAAtiML37nxhSjwN5pJQetirnCzsjIEkn3Topg8IAsSi0f5rgw
         bZB5rHagXnJ2pKWTMLWxrHd0q/HmpPKiE6njaR/p9ggZbgGUg7pgoM5uozlYk1oxRVE3
         Dsdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759252574; x=1759857374;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3TcRY4BQ921KuIfL02VQoBiKVH8DmtkmEOWQHqiiV8s=;
        b=EYNObqXDLUURwKj2qojRk20S8FhvyCh8bBCmxd4icAp7tpaRyatHbCaRFNdx3BrwuN
         BbbrqnJBsx1Hr6ZJT1gUC1p+O7ExmaRnH6iZt9kASyXtEYBYr4iUbAMrEBshA8eYz5+F
         ierzTao5xTABXt2Jw7nEnrdjsDcAigaULkSWVMzJ0iM8N1/Itx9f8zY8XPbEhMivcbwh
         8ahRn/5NoBMarr7SPS636Fxqy5BxJORSel1zYgwb9OR/ArJe4HHrBmvmas+qr7VcjD0i
         +7UGTSmNLwZrYxTMqI3jXHqhzuAzY5ExUVjK2tS71HZPbY1jykIz5S0hxQyQAgnu/4OW
         qq7Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=1; AJvYcCW6fYCnObC/IoOqlHEkvHk8G5ei2GfGXGxHtodEqg0yDjvaR3EdRRsmx0OjfprIU27I39yIZg==@lfdr.de
X-Gm-Message-State: AOJu0Ywptbi8BYnOXGY2T0e9dISCUoTlkjZCpBnQQvEknz4gEjIyymi+
	my6EK93Vgpt0zQUoQ+tWqtBK/GCDDo8YX8GwxP2Z+BG3J/8MvVsY4k78
X-Google-Smtp-Source: AGHT+IGR9lSjxG64BqyF5m3YAZ5lQG0s7obMZwOdQitTxb0kd64FaMOxKP0Us5bgV6lq2Y2TwLUwBQ==
X-Received: by 2002:a53:b091:0:b0:635:34f5:51a4 with SMTP id 956f58d0204a3-63b59a826c8mr4443240d50.13.1759252573958;
        Tue, 30 Sep 2025 10:16:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h="ARHlJd6cnVpdAOmgJwD/PxgskAD8SA+b49jsc3P4KcJJMWzARA=="
Received: by 2002:a05:690e:4317:b0:62f:9176:6b2b with SMTP id
 956f58d0204a3-6363612fd03ls5129589d50.1.-pod-prod-07-us; Tue, 30 Sep 2025
 10:16:11 -0700 (PDT)
X-Received: by 2002:a05:690c:1d:b0:76f:8f07:4908 with SMTP id 00721157ae682-77f6f315879mr6244967b3.27.1759252571112;
        Tue, 30 Sep 2025 10:16:11 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:16:08 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e62e1899-4394-41af-a1b9-b74868a54b6bn@googlegroups.com>
In-Reply-To: <CAGEDioNfg3NadnrVCc8esfcqwwKw9zTFoeH2EukBZpSTCENwxA@mail.gmail.com>
References: <CAGEDioNfg3NadnrVCc8esfcqwwKw9zTFoeH2EukBZpSTCENwxA@mail.gmail.com>
Subject: Re: iSCSI connection recovery timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_110942_1428531423.1759252568166"
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_110942_1428531423.1759252568166
Content-Type: multipart/alternative; 
	boundary="----=_Part_110943_2126322534.1759252568166"

------=_Part_110943_2126322534.1759252568166
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tuesday, September 30, 2025 at 3:28:39=E2=80=AFAM UTC-7 csnit...@gmail.c=
om wrote:

Hi,

As I understand, below 3 timeouts contribute to the total time taken for=20
marking an iSCSI connection unavailable for IOs.

noop_out_interval
noop_out_timeout
replacement_timeout=20

/* timeouts in seconds */
#define DEF_LOGIN_TIMEO         15
#define DEF_LOGOUT_TIMEO        15
#define DEF_NOOP_OUT_INTERVAL   10
#define DEF_NOOP_OUT_TIMEO      15
#define DEF_REPLACEMENT_TIMEO   120

Can someone please explain why default values are higher? Do we really need=
=20
to have these higher default values? Are these default values reduced from=
=20
earlier open-iscsi versions to newer versions? If not, should these values=
=20
get reduced significantly for the fact that newer network devices are=20
faster?=20

Will higher values not cause the more time for IOs to failover to other=20
available paths? What are the options for faster failover?


Thanks,
Nitish


Timeout settings, in general, are a bag of worms. There are no "right"=20
settings because every installation can be different.

If you read (and re-read) the README file that comes with open-iscsi, and=
=20
the iscsid.conf configuration file, they detail how some of these settings=
=20
might change when using multipath, or using iSCSI as your root device.

The NOOP settings are evil, IMHO. I have NOOPs disabled for the=20
distribution I support (SUSE/tumbleweed). It's a long story, but NOOPs are=
=20
not implemented well IMHO, since they get mixed in with the rest of the I/O=
=20
load. On a busy system, a NOOP may not go out right away ... it may be=20
sitting in a queue. Bottom line, false positives (timeouts) can occur. When=
=20
a NOOP timeout occurs, the connection gets reset. If I/O is occuring that=
=20
just makes things worse!=20

The login and logout timers are kind of self-explanatory. The replacement=
=20
timeout is more complicated, and is mentioned in detail in the documents I=
=20
mentioned.

One could spent a bit of time playing with these values, but I caution=20
against making them too short, as this may cause false positives,=20
especially during heavy I/O, or if you target server is busy.

Mike Christie may have more to say on these, and he's played with them far=
=20
more than I have.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
e62e1899-4394-41af-a1b9-b74868a54b6bn%40googlegroups.com.

------=_Part_110943_2126322534.1759252568166
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">On Tuesday, September 30, 2025 at 3:28:39=E2=80=AFAM=
 UTC-7 csnit...@gmail.com wrote:<br /></div><blockquote style=3D"margin: 0p=
x 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1=
ex;"><div dir=3D"ltr">Hi,<br /><br />As I understand, below 3 timeouts cont=
ribute to the total time taken for marking an iSCSI connection unavailable=
=C2=A0for IOs.<br /><br />noop_out_interval<br />noop_out_timeout<br />repl=
acement_timeout=C2=A0<br /><br />/* timeouts in seconds */<br />#define DEF=
_LOGIN_TIMEO =C2=A0 =C2=A0 =C2=A0 =C2=A0 15<br />#define DEF_LOGOUT_TIMEO =
=C2=A0 =C2=A0 =C2=A0 =C2=A015<br />#define DEF_NOOP_OUT_INTERVAL =C2=A0 10<=
br />#define DEF_NOOP_OUT_TIMEO =C2=A0 =C2=A0 =C2=A015<br />#define DEF_REP=
LACEMENT_TIMEO =C2=A0 120<div><br /></div><div>Can someone please explain w=
hy default values are higher? Do we really=C2=A0need to have these higher d=
efault=C2=A0values? Are these default values reduced from earlier open-iscs=
i versions to newer versions? If not, should these values get reduced signi=
ficantly for the fact that newer network devices are faster? <br /><br />Wi=
ll higher values not cause the more time for IOs to failover to other avail=
able paths? What are the options for faster failover?<br /><br /><br />Than=
ks,<br />Nitish<br /><br /></div></div></blockquote><div><br /></div><div>T=
imeout settings, in general, are a bag of worms. There are no "right" setti=
ngs because every installation can be different.</div><div><br /></div><div=
>If you read (and re-read) the README file that comes with open-iscsi, and =
the iscsid.conf configuration file, they detail how some of these settings =
might change when using multipath, or using iSCSI as your root device.</div=
><div><br /></div><div>The NOOP settings are evil, IMHO. I have NOOPs disab=
led for the distribution I support (SUSE/tumbleweed). It's a long story, bu=
t NOOPs are not implemented well IMHO, since they get mixed in with the res=
t of the I/O load. On a busy system, a NOOP may not go out right away ... i=
t may be sitting in a queue. Bottom line, false positives (timeouts) can oc=
cur. When a NOOP timeout occurs, the connection gets reset. If I/O is occur=
ing that just makes things worse!=C2=A0</div><div><br /></div><div>The logi=
n and logout timers are kind of self-explanatory. The replacement timeout i=
s more complicated, and is mentioned in detail in the documents I mentioned=
.</div><div><br /></div><div>One could spent a bit of time playing with the=
se values, but I caution against making them too short, as this may cause f=
alse positives, especially during heavy I/O, or if you target server is bus=
y.</div><div><br /></div><div>Mike Christie may have more to say on these, =
and he's played with them far more than I have.</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/e62e1899-4394-41af-a1b9-b74868a54b6bn%40googlegroups.com?utm_med=
ium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-isc=
si/e62e1899-4394-41af-a1b9-b74868a54b6bn%40googlegroups.com</a>.<br />

------=_Part_110943_2126322534.1759252568166--

------=_Part_110942_1428531423.1759252568166--
