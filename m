Return-Path: <open-iscsi+bncBDTZTRGMXIFBBMVZ3OBQMGQEACSKNLQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id E48BD35F345
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Apr 2021 14:14:43 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id k188sf12966717qkb.5
        for <lists+open-iscsi@lfdr.de>; Wed, 14 Apr 2021 05:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618402483; cv=pass;
        d=google.com; s=arc-20160816;
        b=BkqzNFOVR0U2X9RZ+wj/V0TGtPy0ExAHo3jgUigqVf7Kz+WOzv3FLKIAUBUQ6ZOr/G
         ADcAT/CoK+UJkEVZrOOhJWnDdgnw53Ud5F3vVefP7NiZvl+k3F6HP/OMaAFZwmsHJwrA
         d0ytxD9Lcqw40PpCCQvlmWPao6qVeiDWc1PP4EsyEhIX7mQUeF5PmS+NSLvrd0qicjX3
         PDMZkf899aTHO+11EJy2CyQIW6o8uN+kw1tzEu23LLkopllsCCjwzWKgWU1iGcFlYERt
         mQNmfLi8kiW/hKszjKYUYnifhvOrRSb5glAk2sVzox1ZKLtug11R5FHjmJfQ+mv/r3c4
         83/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3pL57BJMUBNxMDZzzTjQrm+71Rp1BbQQ0xIW2hKAK0Q=;
        b=IxZEIWuCRl+9BwSv9Z5PGMRBdjf/Weyyu46RIlufQSGarpB5FFR5GcIocYzDqvsCSe
         sQJ+HU+LAXbAZpCrQwGe04lYaRXo3Rc75UeLSHTpPjWKiZF75nTDXfUEtOVO4Z7S3M4I
         wLE4pYMrM/Fl2d0SXooqNYadCi+PTndN2baLzJnlME0znDDkgXJaikHF95vRGk+hm01x
         WG073iVaT3kz1mnbwPw9OnikIwN7DF76Y8PLxOW2tI2MZpvIvLxM+UNCnXSuVnjRP+pe
         0rn0eLWOD6QbawMm40lnnK4PWFZJ34Ps9MspVKMZT1sATNZJDggVAAwSdfHehA7noZ4y
         cagw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="C/Os0pNE";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3pL57BJMUBNxMDZzzTjQrm+71Rp1BbQQ0xIW2hKAK0Q=;
        b=UtbcRmK/luo2/TFSlQpn9XJhsBaNOZ8wY2x8fALKUEurglkKc1CpVZyoa3pZFVTWCV
         KjR+yfRQhp9f7ZNPSH/2Qexc+WPSsiRiymy+S5s7uDeR1NKdOxljs1TAFNwROEtUF8cD
         nUzLKE3tUfjUcrnxS4xGl56erMQvRqwZjkZDg7qoDIhpIQvD67AEtPrAPQbmGUqjHLVv
         4tb6eUOc2+0HY1nG14b0sULxqskPmXpqlsRuZGQLs2/w9yi8UzVI87+0NPQT7RTO7bhA
         yzPfnyfDy9vzD/pdMnwFbQ6rFpYRXVDK9rHgjoxan+7Cmb2ZPRiSVWf97PBQ9T5PE8NT
         OGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3pL57BJMUBNxMDZzzTjQrm+71Rp1BbQQ0xIW2hKAK0Q=;
        b=ZSbaXCCjqvSBw3bhvMFcqtXLSfgltD/xl93czbSUKU7v72D3j2F3JXEBPCTUqOQgL5
         PXF535En6rx0LlpcndRhPvOlBjp09kAOSQ3Mj1+ZF2n6x3PLUPYJwLlRjIH9UUGWpWCq
         dJTYFg2b+MO3BWxkX8dHlNBN7OUAla28WjtjSYy9bsxn/UucR4OH74sAbitG3KDGCVlB
         dI6viMeoBJmcbHXmhsls3KjL5r0tIP4ZsK0cC3trUWswDTii5wP8Yp+VILv0/dj8zYjz
         sFOuq2ZfR7xZfpEkWQUSC7Dh8YZnEAFyUh4uoOFU5QXepXg+wJVfcb0AdPHQ2Ztvmsty
         HFjQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532IizpFQ6te6P2P4FMx3CTkpaozkBQNjfjMH0PNDY0lSM6fEhPs
	enlRobBVm3wB/4KWlSJvBm4=
X-Google-Smtp-Source: ABdhPJzYKqKVaLEGJwgEGJUZCb8Lj67yA1tw32ACHwGxUjo8r544v+TVBMpZLA21L9cIvMHFd+GAQw==
X-Received: by 2002:a0c:c488:: with SMTP id u8mr36818652qvi.47.1618402483097;
        Wed, 14 Apr 2021 05:14:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:9e11:: with SMTP id h17ls1147155qke.10.gmail; Wed, 14
 Apr 2021 05:14:42 -0700 (PDT)
X-Received: by 2002:a05:620a:13ac:: with SMTP id m12mr36833666qki.458.1618402482543;
        Wed, 14 Apr 2021 05:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618402482; cv=none;
        d=google.com; s=arc-20160816;
        b=EZSdhgGwvI66oXU/yDUK2wtpPkgJXZpRBTAjRmqVvaSDisXapT42JSBb73ywiVB1fE
         NbaJ+YSj7SdRt9kf0z2ii67cYOTd79ubiGm+xvdAqNbveGyO5vkBGMZPG0pDAwXZGQrR
         IwCzxvbSQYRA4NqJNgsmMvW9Dv7wvTqvTrOqQ45naqBGDpvLBujgl+PlOLA4geSHDCyS
         z+y5uOkOZ0so0oobOldu2GDH4xde34e+4ieBi5GE9VYfI+due75vFGZ+HAe8xWehIKUL
         LHsIIQrSk16BBgioyy5NERw/5wC468VUSIHZGgb5U/jtOqfqxKOaLr8Eej7NAkqcVM8p
         AKqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/I5rlzd0M5kxYPdlYT6Oc+cW8y/mJ/i7s2Xhzx3llpQ=;
        b=UKHeijcec5nQjKMIx5cZL98Ti4JX1QEi0jY2dkQb/5qF7rlQkkWIAwmNlawGOpL3KJ
         YN4TU92VEeCy4zwhWqkbu2XEyeC1KT8E66oY8ujv1Sa8WDth14oqXFyXDrOqEQYHA+xq
         AfkZd6HJ2HfXFc1G5JMKALuGIf2sZtWD4vtF7EB7TnzHeaVEj5F/WOEnGvDOBdikVQNb
         n3z3XzJ9VsjUhqYQroATeJ6jc1K0WUXhIv+DyIcZVEaeAFPCaJg7wMuY2yqGtoKRTzrv
         rgZpGRx8nwwBPoUcKubumCuuKh2tgzXRKjn2rGsK9+4u6xQHWm8BRCjuUtkmkBYZwI2/
         yMRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="C/Os0pNE";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r26si1537445qtf.3.2021.04.14.05.14.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 05:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A25A6105A;
	Wed, 14 Apr 2021 12:14:41 +0000 (UTC)
Date: Wed, 14 Apr 2021 08:14:40 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mike Christie <michael.christie@oracle.com>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Gulam Mohamed <gulam.mohamed@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 5.10 07/22] scsi: iscsi: Fix race condition
 between login and sync thread
Message-ID: <YHbcsA22Ag3o4QAZ@sashalap>
References: <20210405160432.268374-1-sashal@kernel.org>
 <20210405160432.268374-7-sashal@kernel.org>
 <be0783c0-4ca8-d7fd-ce97-c24c2f1d8e84@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <be0783c0-4ca8-d7fd-ce97-c24c2f1d8e84@oracle.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="C/Os0pNE";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Apr 06, 2021 at 12:24:32PM -0500, Mike Christie wrote:
>On 4/5/21 11:04 AM, Sasha Levin wrote:
>> From: Gulam Mohamed <gulam.mohamed@oracle.com>
>>
>> [ Upstream commit 9e67600ed6b8565da4b85698ec659b5879a6c1c6 ]
>>
>> A kernel panic was observed due to a timing issue between the sync thread
>> and the initiator processing a login response from the target. The session
>> reopen can be invoked both from the session sync thread when iscsid
>> restarts and from iscsid through the error handler. Before the initiator
>> receives the response to a login, another reopen request can be sent from
>> the error handler/sync session. When the initial login response is
>> subsequently processed, the connection has been closed and the socket has
>> been released.
>>
>> To fix this a new connection state, ISCSI_CONN_BOUND, is added:
>>
>>  - Set the connection state value to ISCSI_CONN_DOWN upon
>>    iscsi_if_ep_disconnect() and iscsi_if_stop_conn()
>>
>>  - Set the connection state to the newly created value ISCSI_CONN_BOUND
>>    after bind connection (transport->bind_conn())
>>
>>  - In iscsi_set_param(), return -ENOTCONN if the connection state is not
>>    either ISCSI_CONN_BOUND or ISCSI_CONN_UP
>>
>> Link: https://urldefense.com/v3/__https://lore.kernel.org/r/20210325093248.284678-1-gulam.mohamed@oracle.com__;!!GqivPVa7Brio!Jiqrc6pu3EgrquzpG-KpNQkNebwKUgctkE0MN1MloQ2y5Y4OVOkKN0yCr2_W_CX2oRet$
>> Reviewed-by: Mike Christie <michael.christie@oracle.com>
>
>
>There was a mistake in my review of this patch. It will also require
>this "[PATCH 1/1] scsi: iscsi: fix iscsi cls conn state":
>
>https://lore.kernel.org/linux-scsi/20210406171746.5016-1-michael.christie@oracle.com/T/#u

As the fix isn't upstream yet, I'll drop 9e67600ed6b for now and
re-queue it for the next round. Thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/YHbcsA22Ag3o4QAZ%40sashalap.
