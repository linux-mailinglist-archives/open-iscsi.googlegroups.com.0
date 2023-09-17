Return-Path: <open-iscsi+bncBAABBJ6DW2UAMGQEWHJWYLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780A7AB355
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:10 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id 006d021491bc7-57b89ce6dc0sf404763eaf.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392169; cv=pass;
        d=google.com; s=arc-20160816;
        b=IeML7CBD2r9U8YkXFDGqSA8AxCP1A4EwTPSNB7ULWFYoocT6ZNke55JmeZDPcEJKJB
         M5RITXeB8/lxcuqMZZZvgwHZOZmlN64UcZGKTL3bRbiBpZPWloLn4g4KjKPLx+8QDuHi
         fCe8C+Nz21bEjOFr/0oNYLCtEF31GYwDfLKuBVF5reOtsjZzKm2H3+w0m9opnOsYXA+g
         P9N3YEUm9adIGhaOtumkoYzNAl99xpOTf18PiOeLMEaU9LKJKAiBjFoJAS8BPx/wJn/W
         g5CM0LQ/i1LW3YoAM7hd4SBmbQlcjgFY531ZIf2DZbhTnQSe5xp+ZM+pEcq6+Nxs4lcV
         R3pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:date:message-id:from:subject:mime-version:sender
         :dkim-signature;
        bh=8dioW1a+oNAUiLlh1pZgjE3tNrglUj16e3f0vb/ThhI=;
        fh=Lx71Ih9DKXGXjoaoh+zoohw2HJTElxhGW8PzXHYznL4=;
        b=KbPcdSRr41RClxmSLKZP0Kj6mckczeaIzdpqadRrjVJHbXz4gHKqS2gmSA8B+6TKkf
         y7wvmgmQcI40QYmm7mVlDSYg39DwZc2t20v9Ud/CHgLMYPXJLvf1KE5afIh7Tq70o0NW
         f7C79lMKhmzXafYUCo5CJN5efWKwVvSmVLK3LAe5Q10aa+EUkWZ3CXbix5zD2VGSnI3x
         gRrfSIwqEcn1Mf5pGXcK8KG0FJ51RmlGf2/r12GD8pKE9pm75F/nDgRq7x8ZG93AcNo7
         eEHJUdZKWFBMDWQGUw1lp9ZSOi1n7EDjpohWrQW9OfaT0VssQPjEV2qkQIS/PZAjK51y
         TdsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="n7/m2+NM";
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392169; x=1695996969; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to
         :in-reply-to:references:date:message-id:from:subject:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=8dioW1a+oNAUiLlh1pZgjE3tNrglUj16e3f0vb/ThhI=;
        b=BoUHca37Hgz5s9xTcAime0RsQhDGDTrXKVDygHKiWGF5thljLgChwrrjSUiXyjLSp7
         JzJotbRf8VLxlvp0QMwLykOV8dTnoJoUlufKFf/NA1jAONg5VQrDCWWdV2Y6A55261P+
         QIvBS61r/gMqni40j/DJ7RYG4A9N9v4EforxR5YHbdXnrDzy7dqhLExJNCBbeDxY6J5/
         NDn2ho1GVg26B/MhlzQD5D5WDwH/YQnvUYdCiku3sT4pLLd73SbcYKyERQEe48xAxAbu
         EBQ3c4NarL2BlE5J5spWibwTg3+/T4SNm5Lg+BSPUicn0MXFU9GjukWbUoHKghWAA97E
         gmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392169; x=1695996969;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to
         :in-reply-to:references:date:message-id:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dioW1a+oNAUiLlh1pZgjE3tNrglUj16e3f0vb/ThhI=;
        b=Ol7K1+Deq7C8kg2AjQz1hhu0PMi5rL53O5FS2R9ZgcYITXtG4uy7v4CysjwtfSEJg0
         ftL51VO9wnT5NOoocOaAByho/qoHafxWlbStY/NpBdCndDzR0+1gPqCTZV2Bl5wT/oTU
         PWNc+/ZZi76meQfxEa5T6kuLLPn1FVtTvBtflHD+vzaXAYS0DGDofVU/PwB7z1wS1Emt
         Sn8ED0DLlwkFbEZwfnfNNT6ATFROilhk/Gz27Q81nVBqT4IzDzI4+xxyfYTPC0Ei9mEQ
         Rld6yt5XsAZ9KL1bc5dxpF9xlwLDHeLDtsENI9T79nz8gSiVfzi4T7x4Z8Dw1jaHrPKv
         pBUw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YyteMUneEddsPIKHZwEQPK0EQwVCGvC4F4Q/WaKrzlf9X3b2QSl
	N1n1Zb+yqGVgk+uPAm7y4hA=
X-Google-Smtp-Source: AGHT+IHUVsEswNqXHGN7D/ZhU+/WKN91RuM7LSreFkniq4DkQ5UMj2/jaUlQZyYMuP/y08h6o4GJbg==
X-Received: by 2002:a05:6870:a551:b0:1d6:5892:d279 with SMTP id p17-20020a056870a55100b001d65892d279mr9722631oal.3.1695392169059;
        Fri, 22 Sep 2023 07:16:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:648f:b0:1d6:5e48:6ce7 with SMTP id
 cz15-20020a056870648f00b001d65e486ce7ls1460885oab.2.-pod-prod-00-us; Fri, 22
 Sep 2023 07:16:07 -0700 (PDT)
X-Received: by 2002:a05:6870:c7b4:b0:1bb:5fac:524e with SMTP id dy52-20020a056870c7b400b001bb5fac524emr1090200oab.5.1695392167540;
        Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
Received: by 2002:a05:620a:17a2:b0:767:85a7:5f7c with SMTP id af79cd13be357-773aca5fbb3ms85a;
        Sun, 17 Sep 2023 09:50:27 -0700 (PDT)
X-Received: by 2002:a05:6512:3caa:b0:503:fee:5849 with SMTP id h42-20020a0565123caa00b005030fee5849mr2061495lfv.53.1694969425573;
        Sun, 17 Sep 2023 09:50:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1694969425; cv=none;
        d=google.com; s=arc-20160816;
        b=bKpdV5YImMTikb1HCnDUc3weXXT+gvQI0Q3fbD11nst3y1YrMeIKNqbk7mEpsxuZ+q
         o6FMJ06MFRDLG51Nef0yApW9EVoTnvwWBI1rrpvDnkoGYXue81+RnfEppma4TtVJFSj6
         zlEgRAvrY1QbPQa2xUx9+AwCjbL+srz7yBnthuuHq6Ez38GT1gm+SuuvysF4nER5nAYt
         BR/TrHLeCb5mGaPA6onkHIG4EbIwtrQXDWG4rMP723SP5VLQzhWMDT2UwaFmAx4uIIBY
         I0Udgm2sQJTBGq0rtyMLrpzhm0NRnpb1L8eOnI3xI2ZzguRMxsVTzUkjXp1w9mhDBgLF
         X5Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=3NMF11fQuxZqW7cvtYdZZmflUIwT8Bk01h4v3wdNm04=;
        fh=Lx71Ih9DKXGXjoaoh+zoohw2HJTElxhGW8PzXHYznL4=;
        b=ix3+rWZ9Upc4I89oitTwnSSIQ0XUS4HMV+gbuig6LzF6DNOqpPN3L09i35WyMmGLRZ
         dllSj2l4SGROK1zHXQukzJdjhPMS/4TMq94unlGUE8+T32etHQ9TK5mPUriW0H2g401k
         JoMy3x/Zda2nySMV5rK7PK3erF0V50/p1qgLgqvw1+S/nXqg3w1gMjHBr7osHU4bJ9lA
         iOdDhmdFH2xO9vn99ddG8RlkcyO9swzJyQfjcFQ+J8/MxquD+Wn2dZtkrr2KFgXVtk/8
         vil/3QkNZSKXUK/CWG7VBrxE1LpuNjtVO4P2t097JetiQdvqepzxdH6eO+uJvvRFT+by
         aW0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="n7/m2+NM";
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id s4-20020a056512202400b00502d58d12bdsi585290lfs.3.2023.09.17.09.50.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 09:50:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A385AB80AD4;
	Sun, 17 Sep 2023 16:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41FBAC433C9;
	Sun, 17 Sep 2023 16:50:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 266F1E26885;
	Sun, 17 Sep 2023 16:50:23 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] scsi: iscsi_tcp: restrict to TCP sockets
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169496942315.18728.17720146599552391400.git-patchwork-notify@kernel.org>
Date: Sun, 17 Sep 2023 16:50:23 +0000
References: <20230915171111.4057930-1-edumazet@google.com>
In-Reply-To: <20230915171111.4057930-1-edumazet@google.com>
To: Eric Dumazet <edumazet@google.com>
Cc: lduncan@suse.com, michael.christie@oracle.com, cleech@redhat.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, eric.dumazet@gmail.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="n7/m2+NM";       spf=pass
 (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello:

This patch was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri, 15 Sep 2023 17:11:11 +0000 you wrote:
> Nothing prevents iscsi_sw_tcp_conn_bind() to receive file descriptor
> pointing to non TCP socket (af_unix for example).
> 
> Return -EINVAL if this is attempted, instead of crashing the kernel.
> 
> Fixes: 7ba247138907 ("[SCSI] open-iscsi/linux-iscsi-5 Initiator: Initiator code")
> Signed-off-by: Eric Dumazet <edumazet@google.com>
> Cc: Lee Duncan <lduncan@suse.com>
> Cc: Chris Leech <cleech@redhat.com>
> Cc: Mike Christie <michael.christie@oracle.com>
> Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: open-iscsi@googlegroups.com
> Cc: linux-scsi@vger.kernel.org
> 
> [...]

Here is the summary with links:
  - scsi: iscsi_tcp: restrict to TCP sockets
    https://git.kernel.org/netdev/net/c/f4f82c52a0ea

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/169496942315.18728.17720146599552391400.git-patchwork-notify%40kernel.org.
