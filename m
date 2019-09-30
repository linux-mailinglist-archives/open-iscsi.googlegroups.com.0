Return-Path: <open-iscsi+bncBC755V5RXMKBBLPAZHWAKGQEKES5UXY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id A7045C285E
	for <lists+open-iscsi@lfdr.de>; Mon, 30 Sep 2019 23:14:22 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id r19sf5564621qtk.15
        for <lists+open-iscsi@lfdr.de>; Mon, 30 Sep 2019 14:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pwLZaIFzNrnqXgWTnCXmnKUWoAR1LL7iafkRHa/mY8I=;
        b=a/JtnoNNartaYTaq9LIldmtdRX1A2vK53rapYw6EoweWxQ7PwKgBMISJDbiY2AQI4c
         ibTZHBQaeShTrsUfLjrRSUvMwZv3jBUoVPEYT1ctILZNCFxb9S2M3JaLXEKCl3WO1uKR
         eJO16VVfxr4l7C6dYJxDbwDLFmCP7bPmkI7Xzu2jSRg1ekDdvIiogA0NrE5lje8z+G0q
         h5lw8liRb3wYHqqP7Pyl+kmM4TTWuGQpQrMY+L9Y9GZ3TMR5Yoi2S9kFozOkl6rXOcWC
         Ysc1sWyu9U/mwcRztzURfg3UyJAG8ROi8dzPbP4pAPhXA13YU54pUb4yvAhLEP4W73vS
         VWQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pwLZaIFzNrnqXgWTnCXmnKUWoAR1LL7iafkRHa/mY8I=;
        b=afyDksCSUgmuplNRso/zVqVG7ZZq7wKeZgceyuxLzJ6cXh4vljg1pQm4kfP+xLE1sC
         jvFQy1y10YIIUn0RI0SRreqkTqe/NHbC/QsKDTP+hejs9G+Udw9tvBvs8apQS+9fPuI5
         wZqwY/7WroesrrVYtolXx1aslVmbbtMKTtW+/bo8d5u6g7fT1ZGn1r6NDcmLTSq6RZEn
         +RtO0CnyAu1qFtH8+u7Mt+/eYyIfVLGgPKVdUYP5bJUroiKUjEuoHRmoOAMX4q61n8uR
         u8X7xkxh4ICn/3tEpP65BLyyTdWDJ+jF7U0z+NldNG5qb1iLbJnXCx3QwcSC6YjAiJ0T
         wDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pwLZaIFzNrnqXgWTnCXmnKUWoAR1LL7iafkRHa/mY8I=;
        b=fwoSoIAM4ExdkomvLLaU3kwF8xwpuxo9ks9GP/vn6m7e+fLAlK0NAv/DOuXmb21HmX
         mF+B8i13+mdZD5kUvfQUsQ9MM23b+U7RPRptdv79ukz8LEabgylViX8dTVbRK3hDz1kD
         VrGns9hD1mSKsVM+yl6mIIUnvhzjC3U/r+WIcEDPfHeYFScAUXndQVy1KZB8E/AnjHdH
         MDcYmj4gLaBspX/13u3pdlpJx2uixq4YOTAmDZkHGqVANIM8MG//wcG8u452yksBxkUA
         /0Qy/BCSJqg81n7n/IjCCepuR7AIBq4UYNtAK/jSsF828hYgdxUJbOuT1y/PkRJHmZ2w
         EFIA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWFF8YkZWHEuN+zSQC01nHXd3SMKLxSM6kZ3sngVpp335woM6KZ
	ob5jNPdLRoBchCICnVLcPqI=
X-Google-Smtp-Source: APXvYqwINn7CPsBY67mmfYvi3131SMzpUxTgLRiHpd9hcyPb3gGmj0/Xsyp1/Uz1f+m4S8ox3OLMhA==
X-Received: by 2002:a37:684f:: with SMTP id d76mr2377291qkc.415.1569878061342;
        Mon, 30 Sep 2019 14:14:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:4852:: with SMTP id v79ls4559077qka.2.gmail; Mon, 30 Sep
 2019 14:14:20 -0700 (PDT)
X-Received: by 2002:a37:4c4d:: with SMTP id z74mr2229798qka.459.1569878060769;
        Mon, 30 Sep 2019 14:14:20 -0700 (PDT)
Date: Mon, 30 Sep 2019 14:14:20 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <30c2ecf6-5d7b-42be-9487-4d07b18fd5c5@googlegroups.com>
In-Reply-To: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
References: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
Subject: Re: iscsiadm unable to connect to iscsd
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1824_542678541.1569878060245"
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

------=_Part_1824_542678541.1569878060245
Content-Type: multipart/alternative; 
	boundary="----=_Part_1825_1072477389.1569878060245"

------=_Part_1825_1072477389.1569878060245
Content-Type: text/plain; charset="UTF-8"

Okay, I believe I found the problem, and it's one that I've seen before. On 
one particular path -- in this case, when you specify "-s" as well as "-r 
N" -- the code path forgets to set the timeout to "none" when communicating 
with iscsid.

I have pushed my change to https://github.com/gonzoleeman/open-iscsi branch 
fix-session-display-error

Please feel free to try this out before I merge it into the main line, but 
it seems to fix the problem for me.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%40googlegroups.com.

------=_Part_1825_1072477389.1569878060245
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okay, I believe I found the problem, and it&#39;s one=
 that I&#39;ve seen before. On one particular path -- in this case, when yo=
u specify &quot;-s&quot; as well as &quot;-r N&quot; -- the code path forge=
ts to set the timeout to &quot;none&quot; when communicating with iscsid.</=
div><div><br></div><div>I have pushed my change to https://github.com/gonzo=
leeman/open-iscsi branch fix-session-display-error</div><div><br></div><div=
>Please feel free to try this out before I merge it into the main line, but=
 it seems to fix the problem for me.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%40googlegroups.com</a>.<b=
r />

------=_Part_1825_1072477389.1569878060245--

------=_Part_1824_542678541.1569878060245--
