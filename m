Return-Path: <open-iscsi+bncBC755V5RXMKBBY6NXDYAKGQEGCLBCJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCB112E93D
	for <lists+open-iscsi@lfdr.de>; Thu,  2 Jan 2020 18:22:44 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id t19sf35435254ila.4
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jan 2020 09:22:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577985763; cv=pass;
        d=google.com; s=arc-20160816;
        b=nOWKdys4OMOJQjqCNZ2Tr5YFt0Nm8td/op8mo3HUys6s0uT7qpobfuT2EUTkiEvqmL
         wM5JHIgRjrkhrzjjhhdc+YgvHpUiu80TXEDhX3usZIz2K0GDKDeFz17fhPBuWCm8I+DW
         kHhwKHIr/PUiX4BoB3IgGM7fpRSqYprXi9hImXrClUKhoB5wdJnIt/mhljHLAGD0+WWS
         IH6LS+DQBAiRvvwlLMzI4HccAwomLt9gOHL1WzcdNar1AGSdQDr+99vqMa6gcJpR+kfe
         b+JUZ6tOqsdo+3i/L2KN8c4hLA3yUx3agS/1165tq0VSvDCbFYGD+32yiyMl4V36dRih
         hQ1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=pGuWcgWD1Rio0NK2BE+aa067NoAOEmn3EuLcfCA8Do4=;
        b=ZZ6TRdRx6bdMqtj5eTOOggKd9Y4bfQTLiE8OeJw3GUCEsq2VdMdEUyIOK4VT4slPBC
         ewrAfbmiKCls52ExsrBnAwN7bTlyPNcepdVpME8r1Hq9qjFsdTcck/fk8Jmc7EiuSSA7
         YlE2CilyBUTdxUu7UfjY28AVNdOw2CuOMtISCA0HQuDKpulqmygLE4TOP0i1GfY5QPgL
         BU1C7c5Vfbq06gzWbwnWzkPzC7ZuNButcyT0yQEDKuztG6qOZOPTYiwBcFb2Jl4N+e7R
         gyqKJoEeUnOwE8XTzJ8XVwiB/nXNrpNGCDZZC3ye6iAv5EeadOMHVETGsiM0rAdvko+H
         6HUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lcjw/c86";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pGuWcgWD1Rio0NK2BE+aa067NoAOEmn3EuLcfCA8Do4=;
        b=Kb3KPCiG3yneljpDkR3ojKeTb0taJDXcNNU8Vcd889dBhqe9E73/eLiIgdBcZv3U3P
         xbdWLiGT1d+sBzkPC7AqfPG6cIBzZ4MDuxkZPeRp6yHuDkTMh2G4CFQ3piNz/MPsxW2P
         EzXd2iZr84eV26ts4XK3J8ZE/+a6sK/lbXnnTd7r/2oPW2qLdCWGvHaxatNiHGqOTrkZ
         bQY/qHLn03/XqL00XaGa9zT4r7OHEkLa0YIXiIVLb18RadfNs8cQmnxLOs1qbZp0tzua
         EI+o3hIjBpFggY47xXq1h44MI1o4LaLS1US6dFgWJ3Q2potaV+iLbU3RMrrcTN0nHPS5
         mF4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGuWcgWD1Rio0NK2BE+aa067NoAOEmn3EuLcfCA8Do4=;
        b=IaNudTF5VtXxRTw7qtPjNvYLmb6YCnAGu4Lr22/Mn2PbO6YwsPOhN2mN6BR5SMK6QZ
         Ld0ZxVjT5yUcZe7BA7awUOBhE8ksdQmvg7gZlO07iolW4fHLo3TovAJ64P1OdAl0wo72
         SaJUQqmo0LA9Q/VK6ytjTbK3+x5m+ADxMekNnAJg53PwnulOYhXTGyjijtYEJx36xEPC
         wQrtABKk0O61X79a0SjuHSPRaBzn4WW8En3cpZLGCDp66ANEcAbio6KA4HOZrgS5ROgp
         iRhV09B3mLiDj0h9Go2K+S3bUMSomQSJAAUiLDQAtEgpJ2u6TaDqpzv6duYkgnfMYRck
         H2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGuWcgWD1Rio0NK2BE+aa067NoAOEmn3EuLcfCA8Do4=;
        b=ge9/Spp93w8Iz1Z5M726PT48nLEZKRMg+YhxqvM3T07qb4Dkj9ld+eiWFWjSKs8+BG
         wxAktP5XGiz9EcHxoCfbHoR6r+UywOfPO7zxk+o8Q10Jnb7V4OyNYQ3IpRtF6jL7U6uB
         H6RGr1i4QGR9IH5AZ7PYfVGMX41dbRG80bGSmwQZEEiXsK0P3zDtQJHafTTllWQTk+F7
         PhDs0yvYccTxPYQ885liY4gnur7XgKtmUp31tjsBx1jC2tvLekG49gE9pu/lIaIAXDXV
         G3XsRBoMSK2+dD5bhWvDOFKuS2ohRKKWNaPbl8DyRLm9i/3SCjcT047vK2TiQrJFM8+q
         yLrw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXUaaMJjBgkT/hybGJ07jAtfCzvCVI52h181VHr3t7E1TyJe9GQ
	spU5/P+Gac4eaL/IYszv/Bc=
X-Google-Smtp-Source: APXvYqzbLN5eG2ZmIE0nsoNopOtXYUYA1h6UTFi5UFWB6am+sjUhfzBRlphmhiSo+ZsKCXsAcwWW4w==
X-Received: by 2002:a5e:de42:: with SMTP id e2mr57338921ioq.228.1577985763323;
        Thu, 02 Jan 2020 09:22:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:3847:: with SMTP id f68ls6451756ila.1.gmail; Thu, 02 Jan
 2020 09:22:43 -0800 (PST)
X-Received: by 2002:a92:d185:: with SMTP id z5mr73141153ilz.132.1577985763013;
        Thu, 02 Jan 2020 09:22:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577985763; cv=none;
        d=google.com; s=arc-20160816;
        b=LJxCGO8yDkixKmLNxP5WdzwGwVidNKVjw53wrAygxwyt2LBIXZGCdVdmvowXeW1hao
         0t9udbltUPO9f3ga355rkpwX560HzVWX3eaBd6iWhYmB+WdKGjZym7JY2+Jw3i4+KYT5
         ftqCJ5ht4QTr3T27IkQa4djNMhY+cVoG0uAy9rMPtevaC87/+cuTLf0OHVjjorPYxAZ3
         kXbvDLq+XJYt+YhHZTmd+KxInS1n7udu03d8LJF5Y5SFjvIbO0arcLw53I6GV0aZzOsE
         dvcEYn+FZlZP9BM8kH+AFNXDw43+i0ZIPZ4e1zLHZrBmn0Zr1nHjPldnbx+OLBjL2wAi
         Yj8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=KBFANmYOdPf8xxkiUqo3sHoSzXdFYUCGoth3CDBD6f0=;
        b=KJli0hBEh7Rv+fieXnyiFYcVnBR9zpgbAFc4Q1aCCo/D+NTvAOzoEIEPcXqfIpcVAU
         IvPx0mQzpneV3THRcEzcC3/ODO0BwgoGbWz5Bqx933TKEBNeHqE9ctGcrtSDos4cpKQL
         HZewEld6RUulHe5ld/XFPLvcnPXsgGc4+bX0kAuJPe2A/1S5E0uPtmjV1gFpm/4f/XmZ
         aPrec10SWZF+zaZZbZ0nChK2B9vs03Nqn8NHIMe54r/sJ0FAXKIY991wQb3+5ATbfgns
         mzW9dw0HhhJhNLtLmSitlisJC9GVUPQafHI/PlccGs9EKKO0+fdSQ7n9NLTw3dPwjUZ6
         tt4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lcjw/c86";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id h4si2825191ilf.3.2020.01.02.09.22.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2020 09:22:43 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id l24so22192085pgk.2
        for <open-iscsi@googlegroups.com>; Thu, 02 Jan 2020 09:22:42 -0800 (PST)
X-Received: by 2002:a63:f743:: with SMTP id f3mr90159758pgk.28.1577985762304;
        Thu, 02 Jan 2020 09:22:42 -0800 (PST)
Received: from [192.168.10.2] (c-73-25-22-216.hsd1.or.comcast.net. [73.25.22.216])
        by smtp.gmail.com with ESMTPSA id b22sm61306978pft.110.2020.01.02.09.22.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jan 2020 09:22:41 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3CA8455F-5B89-44BA-9D16-65296C09181D"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Open-iSCSI in research paper
Date: Thu, 2 Jan 2020 09:22:40 -0800
References: <2a687289-6235-48ef-bd36-239bd8cbd860@googlegroups.com>
 <e6557758-3d4e-4f71-8374-c308e2f09835@googlegroups.com>
 <88c090a8-94be-444a-b751-86ccc2db6463@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
In-Reply-To: <88c090a8-94be-444a-b751-86ccc2db6463@googlegroups.com>
Message-Id: <FCB787D9-40BE-4164-A726-05C66249A8B0@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Lcjw/c86";       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail=_3CA8455F-5B89-44BA-9D16-65296C09181D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Jan 2, 2020, at 8:51 AM, Bobby <italienisch1987@gmail.com> wrote:
>=20
> One of the good things about this forum is, you always get help....thanks=
 for the reply :-)
>=20
> I will soon have some questions regarding the user-land and kernel driver=
(s).... :-)
>=20
> Regarding microbenchmarks, I think this one is good https://fio.readthedo=
cs.io/en/latest/fio_doc.html <https://fio.readthedocs.io/en/latest/fio_doc.=
html>.
>=20
> What do you think?
>=20
>=20

Actually, I interpreted their lack of supplying a benchmark name to mean th=
at they had rolled their own.

Fio is a well-known benchmark. I=E2=80=99m not an expert on it so I can=E2=
=80=99t comment on it=E2=80=99s features and shortcomings, but I=E2=80=99m =
sure you could get some valuable numbers out of it. First, you have to deci=
de what you want to measure. Is it IOPs, it is throughput, is it latency? A=
re you trying to simulate a specific workload (since that=E2=80=99s what re=
ally matters, in the end), or just get some numbers?

=E2=80=94=20
Lee


--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/FCB787D9-40BE-4164-A726-05C66249A8B0%40gmail.com.

--Apple-Mail=_3CA8455F-5B89-44BA-9D16-65296C09181D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">On Jan 2, 2020, at 8:51 AM=
, Bobby &lt;<a href=3D"mailto:italienisch1987@gmail.com" class=3D"">italien=
isch1987@gmail.com</a>&gt; wrote:<br class=3D""><div><blockquote type=3D"ci=
te" class=3D""><br class=3D"Apple-interchange-newline"><div class=3D""><div=
 dir=3D"ltr" class=3D"">One of the good things about this forum is, you alw=
ays get help....thanks for the reply :-)<br class=3D""><br class=3D"">I wil=
l soon have some questions regarding the user-land and kernel driver(s)....=
 :-)<div class=3D""><br class=3D""></div><div class=3D"">Regarding microben=
chmarks, I think this one is good&nbsp;<a href=3D"https://fio.readthedocs.i=
o/en/latest/fio_doc.html" class=3D"">https://fio.readthedocs.io/en/latest/f=
io_doc.html</a>.</div><div class=3D""><br class=3D""></div><div class=3D"">=
What do you think?</div><br class=3D""><br class=3D""></div></div></blockqu=
ote><br class=3D""></div><div>Actually, I interpreted their lack of supplyi=
ng a benchmark name to mean that they had rolled their own.</div><div><br c=
lass=3D""></div><div>Fio is a well-known benchmark. I=E2=80=99m not an expe=
rt on it so I can=E2=80=99t comment on it=E2=80=99s features and shortcomin=
gs, but I=E2=80=99m sure you could get some valuable numbers out of it. Fir=
st, you have to decide what you want to measure. Is it IOPs, it is throughp=
ut, is it latency? Are you trying to simulate a specific workload (since th=
at=E2=80=99s what really matters, in the end), or just get some numbers?</d=
iv><div><br class=3D""></div><div>=E2=80=94&nbsp;</div><div>Lee</div><div><=
br class=3D""></div><br class=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/FCB787D9-40BE-4164-A726-05C66249A8B0%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/FCB787D9-40BE-4164-A726-05C66249A8B0%40gmail.com</a>.<br />

--Apple-Mail=_3CA8455F-5B89-44BA-9D16-65296C09181D--
