Return-Path: <open-iscsi+bncBCPLZU4PQYHBBC6UWPZQKGQEUJU5WAA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C70291855DA
	for <lists+open-iscsi@lfdr.de>; Sat, 14 Mar 2020 15:28:28 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id n6sf2757459pgn.21
        for <lists+open-iscsi@lfdr.de>; Sat, 14 Mar 2020 07:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584196107; cv=pass;
        d=google.com; s=arc-20160816;
        b=I1R5bDp/3wpAjnMdl3PI+VPCSVK3oSSEb4G1vGcBt9a1w7nWDnF4hWkgpUhVJgptEU
         mVrM4SDVRh9rFrmZ7PTIDzBEZIqDYQ3cUsd68O25f+kMroe6RO+5Du7XgSYQ8xIEdMqs
         iz6jlxKBaQGzyLf3yg5diz6GRWqz4/LpM6yyb7/3MamqGwB+KBJG2bGSozueYqnNNG8h
         kK2kJKQ0F1nhjYK+zdY8xzYxZbhPMfkl5362IwNzqjdnpBx7jGtAY4Yr5i9DcPKY9E0q
         jCczOTDgR0D9KFezdHJXZAB9gtGkVskA/JqsDoq9pYyZXfJTluQ1rSaynZ6YiJ/FnaQ2
         6IqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:sender:dkim-signature:dkim-signature;
        bh=06rvTIgkmSIZs5bo2KjTtTzEjvVKdQvru5LiEB3XnEI=;
        b=czA87hkpKjNtBcvZAfXmn/4lNIA+rbKSKNKy2hXKiW7evhWDmH0BKbUrdC3uRrIPSg
         qrydo8O/iaBUEa2DKL1gDwtihf8fdJvoUqleBZasXjLkCrGsIlqAt2H3vps8d8Sg+Rbg
         DzdSYq8e3KR4d1QkU5WU7LpmYh7X4YJJETdPV0Y6o2of97xbIVpyCodE+KlA7X5ZIliv
         U/csK39W+RwpMH7L2fl9nXh6/eUOl4/EYSRrPNFmELKIJBUkzrUEr1kIbfk5bG6n4KMp
         TE2v7I4oeya/QbBhZNiv0KNP2tMiYhH9vFHRROvCwZDimx3MZjPMFlvlI8/cXwj87nJz
         5yIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fOA+3dw4;
       spf=pass (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=msmith626@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06rvTIgkmSIZs5bo2KjTtTzEjvVKdQvru5LiEB3XnEI=;
        b=T8pqZ17OjygPatNG77GHYka9oYLgTh82dDE7qwWlDaQEG6U/pZhz9o8GDwjlLuIqgc
         mmvo9Q0fPpxypHqeH2gVGR/32PEVnV01Q/cgHMIeRFQvI/c83PBeNGPGzq2q0PKNFbBL
         jH/Xc/PfZr9HZGpWKrQSw1b2pWLL60OTr4zyzqEL2leVYUU7tMEhpKgyA3VTdmr+zsMn
         r12ASzMLTdO7tp24yhUQeMNZzw+ZMzl0Itk2KOBa+OUfJmgerYHwmroCrqyPq/bm8eQR
         NX8iGrJH22GDwjoAwbvjrWRHqrED0/lM4jn269O3XkxUve9ONPoiwHMmRSlDRdt6eua8
         y24A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=06rvTIgkmSIZs5bo2KjTtTzEjvVKdQvru5LiEB3XnEI=;
        b=mzLkYLwURcnGVkHGI3ZeGmXbuAPoJo/vxB4OYHi+l9KcYbB/ftVcr09FzGvI6NT4zl
         Cg+7KvyRgprQBPj/xjDqZZ754kPSVdIGKsZVN9NnI8jxf/JQI0weOLgSSODkGozNSz0B
         iSwIgrQiWPSfnFIh9RwmlIwEYWEqVpTcx1pUvdxjiJ1iTif7pw57aM2oD4Nnodz0HCxf
         bhGdjYkEgQ0LSUKz8fDge7GrXD0lZMVyg3HCy18FpWvFTHHvztiTiT7+tiwKzA+B1n+L
         2nNzXkHfb0wFNlX2AhqRnmT+GX8Orq3TZNAWEx7zTW5jQgW+czbKz6KKfzCqqZtXqgxg
         Tgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=06rvTIgkmSIZs5bo2KjTtTzEjvVKdQvru5LiEB3XnEI=;
        b=I21JxPUTEpJzWvznZoxyCZeKNd1xgVIjbI4KBTFtIEINoS1flHTsg8+uLFGMaw1r7S
         9Ui5wXthB6K1qbajFtWs8Ord6HcjucAj/44a0nEjMYLHn/vzBl2LKszpu3DXRj3tgUjT
         6Aalqq+ycvRxKJ0Scjf8V8rUDNIXHk6QCRG8mVJI9xK9ZeduU3CbbLGGWtK72V4z/ZMD
         RLtGyRoBN8YEiZdTslqyAUkiGYDl0/awVLobNM6Y9iYknHI0wUPOujwsm3q3x62CsPe8
         8O2BqbkfqqczkUxxb2hr2v+3kSznB3bOmAxxhEJtnF6Du9qj9njxb6ZlbSDol6Tdv3bB
         gjLQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ3kNDP4wHfjZV5jIb2/ytwBg/7dBbtU4xLpMCmm8XissZPO5ftl
	J1ZvA7FiUhs/DQO/gPt1h80=
X-Google-Smtp-Source: ADFU+vuJfWimC18v6AqCgWay3HHVJV7aSJ3SDhzn14HlbZhJ7HvTgowQnDQTeMoaZoWnFsZ14RSg9w==
X-Received: by 2002:a63:348b:: with SMTP id b133mr18506746pga.372.1584196107226;
        Sat, 14 Mar 2020 07:28:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls5939541pls.6.gmail; Sat, 14
 Mar 2020 07:28:26 -0700 (PDT)
X-Received: by 2002:a17:902:864a:: with SMTP id y10mr18787180plt.2.1584196106795;
        Sat, 14 Mar 2020 07:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584196106; cv=none;
        d=google.com; s=arc-20160816;
        b=TE4yZSy8+z0i6Rhu3euxqf6Z0UeMG7rqK87xyvDTH+ZP/MwOakQAA1R6WCbc680V9d
         /EfNsIj4mFLDbqlYEBC6QWEN7mRfCM0q/SmjzBERucm9zzQ+iI8+9KykPqeGxaN04rrx
         5pe8z1JfxP6nr8odA/Q5RWInKrRPfJBmrp1iw5x+BcO736LORrC50SumgrKIqBBg0RVC
         5eONq//RhHP+PCXxvXYyc0wjnefarSVi8mh//Pcl/EF77o+EdXfb//OePjDzUaJcXfci
         5hirdRrtMVj2RtQimUthMYpJpywWtuTdqwKkWEbxyicHzVG7fesQc/fIC3Z3EeosShNa
         WyXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=xHXkuOFww8fBrnoQwb0NQxrcC3ZUzP0EEcSjH6cTvOc=;
        b=SVDa+/sBKd4x8rcXl8DYcpAY38YZA8QSFELySGz3n/VcLczazenhFQieHHvchiJOAX
         j7ocgdud/cXdIzsaW5KVx7bHqZy4imvRTIcbWmJRa1iDSSvl1sQFpxeM0Ywn3/8BChJA
         eKfhml2q/dPbPSa5KdgcI9adP5Zmx+PnT15H8ZIZvR1ryCBcMKv/maEFcioZO5cnQ7Fb
         1qBQ7xzCIPZaqcPq0KdBT0vwF33lzMNwaqMgYgaF0aXmV3fYFWuqompqbOyFVi5SbZb4
         Ua9mLG3ZFz3fHkyIa+7cO30MHf2afKbFMq3W2WzIj6HZ7/PnoakOVYlpXwP3Lg5gSNPH
         FkTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fOA+3dw4;
       spf=pass (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=msmith626@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com. [2607:f8b0:4864:20::e34])
        by gmr-mx.google.com with ESMTPS id l6si494423pgb.3.2020.03.14.07.28.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 07:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::e34 as permitted sender) client-ip=2607:f8b0:4864:20::e34;
Received: by mail-vs1-xe34.google.com with SMTP id c18so8272020vsq.7
        for <open-iscsi@googlegroups.com>; Sat, 14 Mar 2020 07:28:26 -0700 (PDT)
X-Received: by 2002:a05:6102:30b3:: with SMTP id y19mr11565325vsd.132.1584196106218;
 Sat, 14 Mar 2020 07:28:26 -0700 (PDT)
MIME-Version: 1.0
From: Marc Smith <msmith626@gmail.com>
Date: Sat, 14 Mar 2020 10:28:15 -0400
Message-ID: <CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA@mail.gmail.com>
Subject: replacement_timeout Override
To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: msmith626@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fOA+3dw4;       spf=pass
 (google.com: domain of msmith626@gmail.com designates 2607:f8b0:4864:20::e34
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

Hi,

I'm using open-iscsi version 2.1.1. I noticed that my
"replacement_timeout" value set in the node record is not being
applied, or rather is not overriding the default value set in
iscsid.conf:

# iscsiadm -m node -T internal_redirect | grep replacement_timeout
node.session.timeo.replacement_timeout = 5

# cat /etc/iscsi/iscsid.conf | grep replacement_timeout
node.session.timeo.replacement_timeout = 120

# cat /sys/class/iscsi_session/session1/recovery_tmo
120

# iscsiadm -m session -P 2 | grep Recovery
Recovery Timeout: 120

I can certainly change this value in iscsid.conf, but I was thinking
my value in the node record would override this (for this specific
target). Is it expected that this value should override what's in
iscsid.conf? If so, then I assume I've hit a bug, or perhaps I have
something configured incorrectly?

Thanks for your time.

--Marc

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAH6h%2BhdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA%40mail.gmail.com.
