Return-Path: <open-iscsi+bncBCPLZU4PQYHBBU5JYHZQKGQEKDUCU4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 858E1187886
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Mar 2020 05:40:52 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id n6sf1912769otk.18
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Mar 2020 21:40:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584420051; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaoMFUlEBwjIEBueeklzjMhdQINE7e9JwTNDgSJrGXvHc/UcOI+AMQALTGkQ28jY3U
         dYCjaRFMwgGHEshnLSjwWpFxj39wGKDB6MEfi2B7+q0T3sKy0arniL7+mUOqN6jpS6nY
         qcDzus36Fs1Tkvd6PUrQFbtjDcEHnKlvZMwoC6zdgowOVpBp0A1WaAZbM/pLO6sS65CG
         iGCpTPBR4pbL6HKR+ohEugIdQRQMfjOGBii2Egb9xBIixWuW4VmPGFSc3r1xbblbP0VO
         t5WdLUNFn8+vvFUVj009LBVEPRd0j+Igvq4PD7Y1wvSSARFWfMa4o2z2Lm+8eEwlwWX5
         IQZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PnD9kJFv753c0LRgLrX4kbQLhE/pJ5zdAv62cFOJtbg=;
        b=KpL3f7ir6EMVemKUEhRrA8dpyO+8cnqOU0wdUSqGCjNLvf2BPxiCD7MSifAU+VSA6N
         QoMi5OmFmk7rdxl9X3wC3P91X+3ZcV1C9oXU6/ZS+Rpk5eely39OBYf46FG0UzlRxbY8
         A8ZClH9fDSf/xkHxARPV735rGjZTEXWYDeEU5BJWAQFx5XH3lt+7NszJO2/oK2CAhMNn
         u8q3P6LYwoCGihYOCo6FwtYmDZutRzN84GSiBs7Sh1YMgbn2/yYODfODGNm6WL4jSfB+
         dg1vxkF2hG/qi/oeHgxFg+38QdzNieHWIq4OozgzVUGcSo6Xs5OnKwmoSYrRviYWH7t8
         iYIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PX3KabEM;
       spf=pass (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=msmith626@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PnD9kJFv753c0LRgLrX4kbQLhE/pJ5zdAv62cFOJtbg=;
        b=psYj1EWuiFsd4ocxyi9r4OzC8ryk7Jo5Hfaw6/3/5e57i8bQL2rcpyCrRvlvXazo2i
         Z0d34R1dKuO8QI5VE5J2v9SmQdaP+qveh00oCtDdMpPBYRvVd+E2sP0mCQVVrW1thke9
         tbs0CHoK7iKdWp34xJrFw0mMQiKgOdgIW7D+DFUtkWCVcwTzOqCzlRzazB6MH3rASYec
         KpJuEFXJQGPaXJ++Hhty5ej5R0TejwxClSvq9loa/cFYu6lRmrSYX+z5qGmke5n7qQl7
         hKXf5yYuhptoVbeTD78gpdCYmnBMQu02Erqegqkv0ix/8u4s9hkUVY0YXgDxZd/Ed2Vb
         5VBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PnD9kJFv753c0LRgLrX4kbQLhE/pJ5zdAv62cFOJtbg=;
        b=EWFVYuaBMTy6idE8vZwMBLBEhAKjY0Bg8cBYbw/hCFxmAQffs/NlGwCr3f0tsLoEIm
         NGihNyAtToytiAuZFNhdju5MHMh7eMrkbYS1jdgxwXP4UslqDcYA31Yk3gtuAmChE2Aj
         ZbEwQ+bOcv7C0BVswexm30zeKh+BH0Znrhb+YRjI2GOjnco5soiUN/5551DwccKZr6Dq
         rssPsz8Vnf0ZQXuy/adY3v/cG7BVsPHinrQjnsQaWGGH82AhuMCqT2wXIE+qxX00uiY+
         O3+6zzSUQToWNumUqcpv1lu8Ko7pRDHD3x/QIQtVBEI2dwz+UxoO5BYhjwj44+mTUpz8
         D42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PnD9kJFv753c0LRgLrX4kbQLhE/pJ5zdAv62cFOJtbg=;
        b=XIrIm5WPZG72aQlvV/0tTT+YgEqvpbsZaDr9hr8RZgKtJuN/e73pnG0YwwD9rK8/Yw
         wwh1t6WFDi0ovWf3tvZWJ9xkwJsKif42T3fCiei9n6NrfB7MRgP5rarI7WtrIG7zV8nb
         eI8gY/PbgPWBkUPLafvf01AwQwZB/tPSpSLBzlyTlIYJCRf7aALRukTAIIyOYr7NNuvS
         Yf5CsyBwLhJz/ofZhZtUazMGxbq9n5q25w0snlAKZ/8YEE4iRtIvELGvXSOQk9xlar8M
         Gj/ilxfrBXuhpEvp+vdKY6RZ3MFwpBpUnUUkIT3FQ13LNd3R4gFEnDPRLdF7cYVjSpty
         utfg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ0pvuBWKPRedtgYB2duWm1KR5XjLOF9uiw4RZJMKPS5mflr0nOS
	zHLgRpZXNUD7Z47i2/mF/q4=
X-Google-Smtp-Source: ADFU+vuowRw9rBfrmnHvEiuLmvtk2z8s8wfDQXLFHZzw742iAOdjMFqpbEheqKV+9s8FoMq51L3G2w==
X-Received: by 2002:a05:6830:1e38:: with SMTP id t24mr2216821otr.33.1584420051208;
        Mon, 16 Mar 2020 21:40:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:2e7:: with SMTP id 94ls1451351otl.6.gmail; Mon, 16 Mar
 2020 21:40:50 -0700 (PDT)
X-Received: by 2002:a9d:7859:: with SMTP id c25mr2239123otm.323.1584420050826;
        Mon, 16 Mar 2020 21:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584420050; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4RtLYbmQDotZoof+Z36ud34csS20iUdvKvYgRNERLWB4z6HQ/cOgPyOJRuAgYYu/B
         8fxgbLFqBRXhTwFUxrnwW02uLgjYONeq9QVVV7xcS7viQZ5kbnGUKzpN5zyM656rZEUj
         hpbLgf/CcCaSDXtkn6d56xrCiJydEUb+smWUPfHjFe4w7XiTZIwWo5DtBzHBnuxUk5/q
         wk1I0rlmpIi0/cx136/ayrQd97SBYK4eYjsO5p2s5a7EwmniKeTLFMnfiXVoq6fJ7B8k
         zYvYuPxQM63aaAVCo2PfaT9HV/aIDypO2UoO2QTNgIMFCKZrR4Bn326y+yocikh32MFd
         peVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=2Ts4vsZQyy0wZ7nyrXuDxFVfIO09w1FrvTglll/lmkY=;
        b=aXwwx+OfcrUxx9/tmf6f8svyw5SN994BNkm7wxBx6GuWafx0oG/ZIQE440yrcYLx4D
         +aKJPAf5ouoR/oGdjBIqFVMFWcBCmzDzXNLi2rCg847ODuetazjd/73JTzR4bYHYRyEX
         crg1AOoPfJ8l/kYtQO57udFLeXUseIBswKXzp59iTrtCI5/xnwYXDbzWTOmfBVesq91y
         GcUtg8d5R1yOaibsF5eQYTupfFWXiomEwSQoEPZrT/RcRXdNDF6MlWQmuh1xg9s4WskH
         pLcCjBfYD7rk2YDouIZR4WGQtFiSR5zI6woTU9uj5nr33MA9LU+/ogn5lxXeIoHUeuSH
         UDEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PX3KabEM;
       spf=pass (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=msmith626@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com. [2607:f8b0:4864:20::929])
        by gmr-mx.google.com with ESMTPS id m132si191890oig.3.2020.03.16.21.40.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 21:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::929 as permitted sender) client-ip=2607:f8b0:4864:20::929;
Received: by mail-ua1-x929.google.com with SMTP id h35so4409579uae.5
        for <open-iscsi@googlegroups.com>; Mon, 16 Mar 2020 21:40:50 -0700 (PDT)
X-Received: by 2002:ab0:3779:: with SMTP id o25mr2328476uat.5.1584420050085;
 Mon, 16 Mar 2020 21:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA@mail.gmail.com>
In-Reply-To: <CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA@mail.gmail.com>
From: Marc Smith <msmith626@gmail.com>
Date: Tue, 17 Mar 2020 00:40:39 -0400
Message-ID: <CAH6h+hdDRL7gOh854wf3aeh2GjKnpa8t9f-5sh21k+b7hnVbkw@mail.gmail.com>
Subject: Re: replacement_timeout Override
To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: msmith626@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PX3KabEM;       spf=pass
 (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::929
 as permitted sender) smtp.mailfrom=msmith626@gmail.com;       dmarc=pass
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

On Sat, Mar 14, 2020 at 10:28 AM Marc Smith <msmith626@gmail.com> wrote:
>
> Hi,
>
> I'm using open-iscsi version 2.1.1. I noticed that my
> "replacement_timeout" value set in the node record is not being
> applied, or rather is not overriding the default value set in
> iscsid.conf:
>
> # iscsiadm -m node -T internal_redirect | grep replacement_timeout
> node.session.timeo.replacement_timeout = 5
>
> # cat /etc/iscsi/iscsid.conf | grep replacement_timeout
> node.session.timeo.replacement_timeout = 120
>
> # cat /sys/class/iscsi_session/session1/recovery_tmo
> 120
>
> # iscsiadm -m session -P 2 | grep Recovery
> Recovery Timeout: 120
>
> I can certainly change this value in iscsid.conf, but I was thinking
> my value in the node record would override this (for this specific
> target). Is it expected that this value should override what's in
> iscsid.conf? If so, then I assume I've hit a bug, or perhaps I have
> something configured incorrectly?

Okay, so after digging a bit, the default values from iscsid.conf are
in fact being superseded by the specific session values. That is
demonstrated when I run "iscsiadm -m node -T internal_redirect". The
only problem is the values aren't applied to the running session (the
sysfs attribute files for the session are not updated when the record
is updated).

I was changing the values for a session that was already established.
The solution is to set the node record values, then simply logout and
login.

--Marc


>
> Thanks for your time.
>
> --Marc

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAH6h%2BhdDRL7gOh854wf3aeh2GjKnpa8t9f-5sh21k%2Bb7hnVbkw%40mail.gmail.com.
