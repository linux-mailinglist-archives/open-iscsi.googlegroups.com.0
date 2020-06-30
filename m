Return-Path: <open-iscsi+bncBCLI32UIRUJRBVXA5X3QKGQEIXKBYXA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1476A20FA19
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 19:03:19 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id r4sf14259483qvh.10
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 10:03:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593536598; cv=pass;
        d=google.com; s=arc-20160816;
        b=L4MRWzXAJmHlqpScJSgerxzlZYlpkn5eku0hwYb6XMoPRBuTA+xxogUw0j6gP30REN
         ohApUK1XGBxUkB//GHwIvMQ/dgpRgZXbot3SEbgjgjlG1GxVQCdWiUupfl8DBGzF7Y+V
         wLIdB/6/+Ec/OJ8FsYg+C4C3Br6ktV6s5RspkFNMfFTxruhWlnPoQuDffVuhq5ATntPA
         J/OZjPFWhMtcvU0heXZ+uORyFnIeK093aXdNCXKplfVS49zOZ1pN1M5QCfMC5tOpD9xn
         DYoM3bT4P8ueDEV39u1cNIOp/Cdq2sTrwyp/5LIReuFzQB9MOvJbEx0+wO21T0sjpq4m
         fZJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:sender:dkim-signature;
        bh=bKQ/j0cQmvuWadO+QiScoVeZ3xzhHRqM4YYvaQT2k68=;
        b=JZf1AV6Ig/icRUiB0fmCEm8yrmwaHI5VXE9+HXfjxWeZRUTkDxOTAwSePZu4Xa4YpP
         P+JR7qzhALop7S2Dhz4VW84oqacEyRpscIBPXI8SO2BukI/b4TOVA7dsqMCQcTs5le33
         rjP273O9r3GLopbVEjHLEsScMypqnW4mHtWnpVV0Dol6lxVDIAcOi6VTZ4TeQkwwO/s6
         1RkmDcPZJxe4k/aF+Ls0fBZTWRV9TvjvSzluoyoPlKR7rWuFgfpK9FtpvnZlBLuIPaQK
         RvSTCEIP6/NcUHv4dSreDy5eUdVEEu9G0CmwhijR9LR5/Ua+2S2zqKDTD9Tc8sECKE61
         NOFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i8U6+Lcn;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKQ/j0cQmvuWadO+QiScoVeZ3xzhHRqM4YYvaQT2k68=;
        b=E9atcQEZ2y/gtjGCiOq3EIbzn7hBcR/9V/deoMJ4R2Cb6C/4HHul3Ygf2dj9iwlAze
         JShVhdSof5yF69BjMi6uPXKpzIIIZlfUW58N/yBuPhRHxUVFbHhSykaDyjIoFnJqwr7K
         ZQEOisUcZMGmsT1Y57XZuhMKqU8yL/XXWGv9qxeowaLnp66eXe7SbfpnwdvEpez+E/CI
         9vWED7d4QflGUR9IzBg6S3wBuzhUoNNd5Q51PHVZ20Sxl2zm8AZY4Zx8bKXGF+nhLRWI
         KIlB0ActnRC8Trie2f5CpkN1PElPgQMYRKiGg3FH+1jUxqXs4aZMXAtXG9kuuSnywix5
         BV6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKQ/j0cQmvuWadO+QiScoVeZ3xzhHRqM4YYvaQT2k68=;
        b=IJau7DUefgRco1qYjQxjYZlZD6AK7+DO209LCNcwS7Vu49hQ3v+M8O2I1gT3NpDY0V
         QiXl8uv1auDjVQKKaurHIJm0WMmMAZAOBOagyrh7Yq1c4dTH3xcs8KFZt4SCd69vM3JR
         1kEbIMS2uyCThRnQMNqe/SZkMck5gVsLNmRRHCFh0CFmdDN9e3T3nw/4n4reVc/2wlRu
         sODD3ivX2lFfsiDvdGKnm7cqV4NZlp2vF++T/YJ3uGX4P95kyp7Ak/Eo8EzuKVkfWZSA
         AyBCyaCphfdUGyv0RdH+iJITm999QzgCxS/T2mhXFERC7V93/VIe+yuO6HNwBxSgWsKD
         NQPQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531gUqEZbPNic+2GYhxQRjgecKO/Q5/9uNrOWcylPRGNQs1TV+xm
	NYrQV/+wsekfBHTWxUASQlc=
X-Google-Smtp-Source: ABdhPJwE/QG46qgdOW4ysmaYZp4ETAJqtU29c4GbAjcOMKOWHwAgRxdj6cst5+LjN5SuDikLXmPbyg==
X-Received: by 2002:ad4:4a6d:: with SMTP id cn13mr19364738qvb.165.1593536598106;
        Tue, 30 Jun 2020 10:03:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls10075086qkd.2.gmail; Tue, 30 Jun
 2020 10:03:17 -0700 (PDT)
X-Received: by 2002:ae9:ed86:: with SMTP id c128mr21366425qkg.475.1593536597904;
        Tue, 30 Jun 2020 10:03:17 -0700 (PDT)
Received: by 2002:a37:4a01:0:b029:f1:b630:a9ab with SMTP id x1-20020a374a010000b02900f1b630a9abmsqka;
        Tue, 30 Jun 2020 05:47:23 -0700 (PDT)
X-Received: by 2002:a25:8404:: with SMTP id u4mr35109210ybk.515.1593521243635;
        Tue, 30 Jun 2020 05:47:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593521243; cv=none;
        d=google.com; s=arc-20160816;
        b=gTMEkcWAY3622Q5YVWjzzVZ35fZdIJyErqD8WTJfdwV1axb2+ikV0Ahw24cuifzWek
         RQcP3LbrsZFqqZTe5Nf6zmiyRzi4nuv+2cB571S+m1vpr9dKkaxoC4p4aNgjactZUqiH
         60X/1mCoVh/5U7CktC371ED9OnO3L2QofjFt3KU28rsqynmU5C0GZ89BVNn+UXWgp2iE
         efrt59vxi4fwPOXSRklt1u8266phuhYY4cqi12/zdOr9g6/0uixej91SM4TNinJiSSiR
         75GGtWcPoOY7j7aMttciFv7IWQ9WTL655/j+SE15F/UrYfwVRRHD6aYyErdY/uV4Zz9E
         OC7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=tanpkjbDYg3jn/hi3AtY9eWpggHJUcc3aVlth15iMBc=;
        b=bn5RBQxS5M3Zfm4hfKWHcDZLdZgSyDR3sqDjYH4mvH3EsoPsKHKOnUqJVwZ1TeIQKR
         x3TVAfPKoZ7AK+peEqbZ7/4BB2+BBnkaY5bwXcf+f1/tnMPfGkptpPi+TobAQgaHtelq
         vv7vRnO11CNciJsHKiycw/A4gmjO9YUOMR0AorVanWfCw+pV3stBAZ4U9G5opoqb2RIY
         00rWixmqePWoX+4PoMUgR5Sf6Ny+N/2+dbRPutjaDWnOD6lIm3RA8Xl82OA3aQdRhlc3
         OSS7LeWzjha4uXfv/E8En4KLwIOcZ2ZshYVXKNS6UliKFcU6UJbTY4GPf+fYzbHBGhSI
         odPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i8U6+Lcn;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id n63si116027ybb.1.2020.06.30.05.47.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 05:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-X7weDeSXMwaCwIA2LUy3Hg-1; Tue, 30 Jun 2020 08:47:07 -0400
X-MC-Unique: X7weDeSXMwaCwIA2LUy3Hg-1
Received: by mail-qv1-f70.google.com with SMTP id e6so4808068qva.2
        for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 05:47:07 -0700 (PDT)
X-Received: by 2002:ac8:76ca:: with SMTP id q10mr19728634qtr.270.1593521226793;
        Tue, 30 Jun 2020 05:47:06 -0700 (PDT)
X-Received: by 2002:ac8:76ca:: with SMTP id q10mr19728611qtr.270.1593521226419;
 Tue, 30 Jun 2020 05:47:06 -0700 (PDT)
MIME-Version: 1.0
From: Amit Bawer <abawer@redhat.com>
Date: Tue, 30 Jun 2020 15:46:55 +0300
Message-ID: <CAOfZdw_ndnRyXHxcovVRPvFD6UYYEQScwuhjkOPvirP7WxF9tA@mail.gmail.com>
Subject: Concurrent logins to different interfaces of same iscsi target and
 login timeout
To: open-iscsi@googlegroups.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000a4a21b05a94c92ba"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=i8U6+Lcn;
       spf=pass (google.com: domain of abawer@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--000000000000a4a21b05a94c92ba
Content-Type: text/plain; charset="UTF-8"

Hi,

Have couple of question regarding iscsiadm version 6.2.0.878-2:

1) Is it safe to have concurrent logins to the same target from different
interfaces?
That is, running the following commands in parallel:

iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p
10.35.18.121:3260,1 -l
iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p
10.35.18.166:3260,1 -l

2) Is the a particular reason for the default values of
node.conn[0].timeo.login_timeout and node.session.initial_login_retry_max?
According to comment in iscsid.conf it would spend 120 seconds in case of
an unreachable interface login:

# The default node.session.initial_login_retry_max is 8 and
# node.conn[0].timeo.login_timeout is 15 so we have:
#
# node.conn[0].timeo.login_timeout * node.session.initial_login_retry_max =
#                                                               120 seconds


Thanks,
Amit

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOfZdw_ndnRyXHxcovVRPvFD6UYYEQScwuhjkOPvirP7WxF9tA%40mail.gmail.com.

--000000000000a4a21b05a94c92ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Have couple of question =
regarding iscsiadm version 6.2.0.878-2:</div><div><br></div><div>1) Is it s=
afe to have concurrent logins to the same target from different interfaces?=
 <br></div><div>That is, running the following commands in parallel:</div><=
div><br></div><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I de=
fault -p <a href=3D"http://10.35.18.121:3260">10.35.18.121:3260</a>,1 -l</d=
iv><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a=
 href=3D"http://10.35.18.166:3260">10.35.18.166:3260</a>,1 -l</div><div></d=
iv><div><br></div><div>2) Is the a particular reason for the default values=
 of=C2=A0 node.conn[0].timeo.login_timeout and node.session.initial_login_r=
etry_max?</div><div>According to comment in iscsid.conf it would spend 120 =
seconds in case of an unreachable interface login:</div><div><br></div><div=
># The default node.session.initial_login_retry_max is 8 and<br># node.conn=
[0].timeo.login_timeout is 15 so we have:<br>#<br># node.conn[0].timeo.logi=
n_timeout * node.session.initial_login_retry_max =3D<br># =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 120 seconds<br></div><=
div><br></div><div><br></div><div>Thanks,</div><div> Amit<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAOfZdw_ndnRyXHxcovVRPvFD6UYYEQScwuhjkOPvirP7WxF9tA%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAOfZdw_ndnRyXHxcovVRPvFD6UYYEQScwuhjkOPvirP7WxF9=
tA%40mail.gmail.com</a>.<br />

--000000000000a4a21b05a94c92ba--

