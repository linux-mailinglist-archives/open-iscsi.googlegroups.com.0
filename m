Return-Path: <open-iscsi+bncBC24JGEJRMKRBJMEQDXAKGQE3TJSKCY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 55055EDCD5
	for <lists+open-iscsi@lfdr.de>; Mon,  4 Nov 2019 11:49:10 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id h15sf7631094qtn.6
        for <lists+open-iscsi@lfdr.de>; Mon, 04 Nov 2019 02:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a+v9cp7jsBKqy+Cs0EZFa/eyv691XY0GYOYzz5iiWbo=;
        b=KUjQEn+zcVURCxkf2MPEswN3JP33e1jPDMO6jzSa7Hv+bQ6fZjYq/Qb5dQbrn0YH9V
         Fy8+m/egqS4lEWCxWxC9eIvuSSE5zKAbX0abvdGDhdezBsbM/InQ/Tb23rOBj72/2reH
         i1/BwWuSA7Z9v7ANaJnXHl0lpdfh9s+TTIu/GLgQ54aSUYiQyOvZWKTJJJguQeXjrreQ
         Z5s6ZJAIpAloJabRphLQJTiF9yqSLbLTZjaI2vEYm3uWLfm//+mOqbMaBTzFLVavwGvG
         tcRV1Ke9eRTDNE4N1iDMgZ2wK9RDTL8qeUOxoHPsgfTuO4N0CXfoQ+BOujnrFZn5tpqh
         qOdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a+v9cp7jsBKqy+Cs0EZFa/eyv691XY0GYOYzz5iiWbo=;
        b=ISqbtMXWJhqIHtTEh4XcCxGj6eWGYq12u4bypkMgqHHpxCJdvcwvOvvjql6i9wFeCD
         NtqpDox4Lo7IFKt/zHZv6mJf14tD9kakTzkmPmJQJH5bwRVuZnPDOumuUvyr4gXRGYg6
         wWEVG8afLsPJY0nK2O5HVUWwn/Cp7IhbZUnCW+MwA+UTfN7pE2ZaAp9n8W6GaJZ2LZkJ
         LRtG0d/V5FE9zvHLIWVFdKSjp825eda5KhFYp7KQYOcyus2KT85ghkLRp4QtIDqXoNvp
         YazYB5Ua19zb6I+M4k7gAZog3nAwmS/lS5bn7q2X+NAzohvzmhi5HVW+Faf4yfzUq23b
         QeMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+v9cp7jsBKqy+Cs0EZFa/eyv691XY0GYOYzz5iiWbo=;
        b=tcR1NSrKpwzzOa7IWJnHgo94Qqo8ULaFJ1JR0MFZIRcgAIsCGEe8EEajDD6ceOiN1o
         aBxI5LpC6FGDqPDnBVFu+TkewwxgB0CeDFoYupxxEGWK+JGIx9KoAXCn0IbYtBtqa1/V
         /nGHy3471hyVNqEQ9C+wyZN5Uwm2aH/SMtsd74/9GoMQm57xAV1/MNZJmVpb2UVgZAZq
         SW8SkLAT7A2ykstCdfYy4iQ7DHsGVqHRz81mTyGb9VlD5AVpe8MUgJ9XaOV918vjS1HL
         1HO0d4BfvGwNSzohqBJC+OomSmqsG2LHkMj099DXLamuN98rFGK/7QF4S2ZTtqCBNEKE
         W+CQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXw5gQYoKYOeaTnalL6iWpP3E+V0FbCehDdYST5ssmvQjtzfOXS
	kB/0Slv+1//Eeu0tlJeZ35w=
X-Google-Smtp-Source: APXvYqwzVc+ba2VpWcJjNOiOMM2Byw9CCle+XAF7u/Ciu12QXe/rORGU+ZtADwjUzYnXTT0BTKdosw==
X-Received: by 2002:ae9:f218:: with SMTP id m24mr2206915qkg.305.1572864549383;
        Mon, 04 Nov 2019 02:49:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:4347:: with SMTP id a7ls4007072qtn.11.gmail; Mon, 04 Nov
 2019 02:49:09 -0800 (PST)
X-Received: by 2002:aed:2986:: with SMTP id o6mr11174049qtd.320.1572864548874;
        Mon, 04 Nov 2019 02:49:08 -0800 (PST)
Date: Mon, 4 Nov 2019 02:49:08 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
Subject: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1042_1507835662.1572864548044"
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

------=_Part_1042_1507835662.1572864548044
Content-Type: multipart/alternative; 
	boundary="----=_Part_1043_798174008.1572864548044"

------=_Part_1043_798174008.1572864548044
Content-Type: text/plain; charset="UTF-8"

Hi

I have two virtual machines. One is a client and other is a sever (SAN). I 
am using Wireshark to  analyze the iSCSI protocols between them.

Someone recommended me, in addition to a packet analyzer, I can also use a 
packet generator. Any good packet generator for iSCSI client/server model?

Thanks

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com.

------=_Part_1043_798174008.1572864548044
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br></div><div>I have two virtual machines. One is =
a client and other is a sever (SAN). I am using Wireshark to=C2=A0 analyze =
the iSCSI protocols between them.<br></div><div><br></div><div>Someone reco=
mmended=C2=A0me, in addition to a packet analyzer, I can also use a packet =
generator. Any good packet generator for iSCSI client/server model?</div><d=
iv><br></div><div>Thanks</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com</a>.<b=
r />

------=_Part_1043_798174008.1572864548044--

------=_Part_1042_1507835662.1572864548044--
