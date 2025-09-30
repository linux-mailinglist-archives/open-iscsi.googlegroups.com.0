Return-Path: <open-iscsi+bncBC755V5RXMKBBTU46DDAMGQEQGFUBJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113b.google.com (mail-yw1-x113b.google.com [IPv6:2607:f8b0:4864:20::113b])
	by mail.lfdr.de (Postfix) with ESMTPS id 947DABAE22D
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 19:07:31 +0200 (CEST)
Received: by mail-yw1-x113b.google.com with SMTP id 00721157ae682-76c0ad16289sf54399967b3.3
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1759252050; x=1759856850; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mGBE7QrmR09XtOGCpKujYpKW5qXD6+skXU59txAEeBQ=;
        b=Q1g469d+Oc15ukzoWCYuNPFeOx9NXzbpeCj+x550/m8wPwbYDwN7VlwzbJZPzWmCSM
         rEfwAAojnIUulREnqw8YGVwZDze88e2uN/LgumBqoPSfEED+9+5+dqsk+9BpnhOhS3Ow
         e/s3UyOmiICtbbkUJgs5wZlc9gDczQYaWzbaROt/BiV3R82QvdL5J21pJ1Ti6QuE3XCb
         vu/Yktb1oQw48nY7MN+TuUIV/xvhseuFnIcviAGv2Ej/MdGqVyQCNKCutVi0XzUJjaZI
         BuvgHNAt/TBZNsA8c2qGedhwcIqsYFHHFk1f/3jFZducTjQ7BrWG7qhQyDTKYQEHYdKN
         KZ6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759252050; x=1759856850; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGBE7QrmR09XtOGCpKujYpKW5qXD6+skXU59txAEeBQ=;
        b=eYahjetLKwS2XXTjxbrZINxM7gizb1mmNRkeGjUyCGpNcaHdBGZQ0/jhVvEouCQIKH
         Lu2GY4q+O81uFdKOUphYq+Tqc3PhFMPsxLDQlWyCk7JwaP1/H8FQA3Kq7BgrAGaoxRVs
         6Mrdz3UaLC6IH+6jCJpVD6GNQUNpxzCGR4XfuobcMBXIHPDllJTL+m6ofZXlNvl6s4g4
         qpQRNhcEgVOyasA6wKaqu8ei/7QWjqYM1zPi8eJmwFTjQ5ehajw49gYygvn+cC89/psX
         1IPMe1gmUYQU33hnsydob3I3QMrhpBG+CLIVkjNCgCVAU9hRbFm8t52QXZOTSFm7vRK2
         7j2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759252050; x=1759856850;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mGBE7QrmR09XtOGCpKujYpKW5qXD6+skXU59txAEeBQ=;
        b=m6O4fWfB31xGz7AFiy0GnwFqhPeWPpoJRO6BLp3QRe3g9Tm0fpW8hh2pYPIw/5E01Q
         G8ZwXw+ud+hWV1+G8hWV9GY2wWlsUH87vlJ/27YvzbZaXAueZduAY4rnA6xHYLk604ED
         LYAPb+b0N/NvZS9jYeOnU9lfvaQsnznEThY+PKJEfkxkrjlB8P7RHNeeCC/QkVXAor1I
         0daUhW3sW+mzDafJUfo6WffmGLW9CG9Cv81fdso+juQrjSDqqSs6IjAGrvJ+uyC9giPI
         Xd3oaHQ1FJn5QgH8CZF/p2nDdZjp1HCIGhL46SAk8yChTaMw6EAISrQ9RCyiy2ZaWpNz
         5/FQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=1; AJvYcCUlIwGsPKYAQjFZ2NAOFyHEYsCTBseE60qqA6JUBMD98yARpHvC8reoFJNc+tXNkB6vBlJZwg==@lfdr.de
X-Gm-Message-State: AOJu0YweNORU5guTF/hx+nyqh3t9E5fduiEqTORWbPcLoXAioEKK6giB
	PTOFGq5t5s7aVTw7Y9ACXLL6gyzh45HARJd+kh83r6b4R/Ao9McNadjY
X-Google-Smtp-Source: AGHT+IHgUm3MUObaHv62djC2H8pvKTxuTmKiCNWOPRkl4sYFU/Z+csmjcfi7J8ZZWPpskd5lsnf+Bw==
X-Received: by 2002:a05:690c:311:b0:776:df78:bff with SMTP id 00721157ae682-77f6f301f5dmr4967167b3.44.1759252049625;
        Tue, 30 Sep 2025 10:07:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h="ARHlJd7m6pswez5lsAb62DZ+p+7TD8iu09mkqzzZ45S+Y7Fm/A=="
Received: by 2002:a05:690e:1518:b0:5f3:b6f7:81b4 with SMTP id
 956f58d0204a3-6361b5d611dls6743216d50.1.-pod-prod-05-us; Tue, 30 Sep 2025
 10:07:26 -0700 (PDT)
X-Received: by 2002:a05:690c:a11:b0:734:55b6:edd8 with SMTP id 00721157ae682-77f6f144fb9mr3639517b3.6.1759252046098;
        Tue, 30 Sep 2025 10:07:26 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:07:24 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9c5f05f7-48b1-4335-a23a-82c9bc11d302n@googlegroups.com>
In-Reply-To: <CAGEDioMYiPhTa6GYSgzzQwWvZAgASPmK-oHJYjt+HbfG4OpnkQ@mail.gmail.com>
References: <CAGEDioMYiPhTa6GYSgzzQwWvZAgASPmK-oHJYjt+HbfG4OpnkQ@mail.gmail.com>
Subject: Re: open-iscsi version 2.0-865
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_218232_539555036.1759252044239"
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

------=_Part_218232_539555036.1759252044239
Content-Type: multipart/alternative; 
	boundary="----=_Part_218233_1782844680.1759252044239"

------=_Part_218233_1782844680.1759252044239
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tuesday, September 30, 2025 at 12:13:34=E2=80=AFAM UTC-7 csnit...@gmail.=
com=20
wrote:

Hi,

If someone knows the public location/source of open-iscsi version 2.0-865,=
=20
can you please share the exact URL? Is it an end-of-life version? What are=
=20
the criteria to determine whether it is an EOL version? Please share if=20
there is a webpage for the clarifications related to it.


Thanks,
Nitish


The oldest version in the git repo seems to be 2.0-873. The very first=20
commit seems to imply that the repository was previously using subversion,=
=20
and I highly doubt that repo is around any longer.

There is no current rule about end of life -- if you can find it in the git=
=20
repo you can download it or build it.=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
9c5f05f7-48b1-4335-a23a-82c9bc11d302n%40googlegroups.com.

------=_Part_218233_1782844680.1759252044239
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">On Tuesday, September 30, 2025 at 12:13:34=E2=80=AFA=
M UTC-7 csnit...@gmail.com wrote:<br /></div><blockquote style=3D"margin: 0=
px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: =
1ex;"><div dir=3D"ltr">Hi,<br /><br />If someone knows the public location/=
source of=C2=A0open-iscsi version 2.0-865, can you please share the exact U=
RL? Is it an end-of-life version? What are the criteria to determine whethe=
r it is an EOL version? Please=C2=A0share if there is a webpage for the cla=
rifications related to it.<br /><br /><br />Thanks,<br />Nitish</div></bloc=
kquote><div><br /></div><div>The oldest version in the git repo seems to be=
 2.0-873. The very first commit seems to imply that the repository was prev=
iously using subversion, and I highly doubt that repo is around any longer.=
</div><div><br /></div><div>There is no current rule about end of life -- i=
f you can find it in the git repo you can download it or build it.=C2=A0</d=
iv></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/9c5f05f7-48b1-4335-a23a-82c9bc11d302n%40googlegroups.com?utm_med=
ium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-isc=
si/9c5f05f7-48b1-4335-a23a-82c9bc11d302n%40googlegroups.com</a>.<br />

------=_Part_218233_1782844680.1759252044239--

------=_Part_218232_539555036.1759252044239--
