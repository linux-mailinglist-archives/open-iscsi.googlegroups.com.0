Return-Path: <open-iscsi+bncBDA4VMEL3QNRB3MTSL3AKGQE6H6JHZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D434D1DA73E
	for <lists+open-iscsi@lfdr.de>; Wed, 20 May 2020 03:37:49 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id f10sf346625edn.10
        for <lists+open-iscsi@lfdr.de>; Tue, 19 May 2020 18:37:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589938669; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5LR9+6ngAeddUNKBKD4rSo3dBYHIecQUcDvLQa+icXtEpBXbWGCaMizyczfdI5sJ1
         0lAQZAyWHo3VsS1rH5aVSACelQzdwUhVYVKo98FNqnC/6okGcnZsvS2XUUf1xVxb88lp
         JMs5niWxqlv67PyxmSyHav1XF6Xh02iN74xhXxFJnEq7jUKUwBfG4A8akXdM3dOziv+e
         z2lJgQz22TXz7/VmJcNUWOFZcDjrTNldaUS5q4rSMlFsFwnYGfuEMNPkOQBwxeP4YsOw
         Fhsm96Xu1hizOZmrHQ/jYKZEI3kefzjbobwflPqSWi5I7oZMpbit09E+qhYH/rMzTk4t
         O1lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=HAQnEpXcK9bNH4/s0YTgANblZqGUO1un5894V00dh2Y=;
        b=e2LXalI6NLaWqFgqScXlmt9WRV4wrTDJblg/NXOSgqSEzo4Syw+ifYE27+Zhj0WTDw
         xe3wv+Ae7VoOifJKeKd60wpO4Tw5aOUTHorn61rLpiFRcKvqsqEkLEGkrkvUZQEny2WB
         fNujq+dqDzCd39CjNj0gww3wOv6u/wVXyP5HPLwEx24ASasA7E7W3heNRcRybIquw0z1
         Dyh6VJKPwP8w17wTHbXXziaPx37qkk/PJgMn6p2qH/fiuIYRTqosyU9pq3WdO34qboEL
         6ieRHHm7FAjQzcQl83AmY7XGMNjxKOX0GdGYdO2Ym8CY6hSA8UHCpuvmbEXAsbfqX32J
         N9oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HAQnEpXcK9bNH4/s0YTgANblZqGUO1un5894V00dh2Y=;
        b=A/TYn+rQl5ZCM6NcC3kpmFqFK98+k9WNNa2uRMC72JnhrKzCsZ9bns2If3kis4RowF
         djCi87OQha60ZOC5G/kAnkIjBE5geAa6ulbvjMNeAwIUuTh2PJ+7qsICfGFQqPItwQkS
         /XE9oF9MSwWES5w0Yg48wLMOlSixNWFT981FIGnq7XWfRDhv7aQ1mgT1g+9to6fmjKaJ
         /7lHAZ1Axk8hAbJ7qhOgouNIfgvmRxunmq3xYrao03YKPY1JzDGZ66viVCW+vBIfdthR
         7i2rCa4UZViu2VP1LsUEJXJTfdzuD6EqJ+4GHED72VpACj1EIEV454NI1kkoWbX7iaIQ
         UDnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HAQnEpXcK9bNH4/s0YTgANblZqGUO1un5894V00dh2Y=;
        b=GPIpYdZwALJPBfFdsI2O7DvtwmG8+zuuWzPXvVvWxozP/r4EjMOscRvpAOJDXLn1bo
         5SU43zwe1gBPM6LkkqFFooAr2Q3J3ZUkI0ao6t3+04kVOJmAz9G/M+id5YDp2FilSCzx
         L750iuZ/oTTtfWWUFizeHogLzohI1sHZbQ/xDBIjBdpXmdgANuq2uxHve4rdy4M3ArjP
         vJqN/B8UcJAs5nFFW+k4aC/vHsRw578ev43SKiGHbai/lqY+wynKWACP5luomzpKC/m4
         PSNrNuvc6LMlth4wSLw3PbfhFvF1QqOPRHffW+TkuYJghOLbmY5ze9HKU4WNZE8sKAxg
         GbPQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530uhy7a/Bf8aLY2E93oNPbDAqWfSiU/Wfvyd6CA8BRjfCr2bG6I
	TtJ2SM/KsZVAsvFyqHQP0Os=
X-Google-Smtp-Source: ABdhPJxfEjjmgDpfJbgXY74YFnyCEfC8ErCF/402j21bax3LJ+5l3MmjlK9uXAPgUV17jzLZZ7HYBA==
X-Received: by 2002:a17:906:aed2:: with SMTP id me18mr1921632ejb.283.1589938669553;
        Tue, 19 May 2020 18:37:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:8345:: with SMTP id b5ls662210ejy.3.gmail; Tue, 19
 May 2020 18:37:49 -0700 (PDT)
X-Received: by 2002:a17:907:438e:: with SMTP id oj22mr1869259ejb.195.1589938669072;
        Tue, 19 May 2020 18:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589938669; cv=none;
        d=google.com; s=arc-20160816;
        b=NS8Zc/7F4Oe+p36LXY2n9SCjEi31hxFwG4v2hh5GuNrlDvL94FPZsPDAt3wMWLjdp6
         cY7KxkgRiK3eWFB1Sea4CMTzREYhMZNoJMvUflOqj5e6nWUTTaMkBRvQW5UYnUEkusJz
         f8Z3MUyUfVSlhQo0nlwwpVzTR107rqx3aE8iHQ2oVfjL9G9G4nRw/0zNjcJcrJywib3z
         FEUFBCCygNIvV+QtpqLK40GWi/1CmZpLHFnMVadBLJB/o+zX0IKItqkJgGGJAAYHHLGq
         O7F41D18oAvoyO+OvtDzP1rGs4s6Prg6rAyhIloygzPOh+674SbHr7WuCsz0hVQcCW1L
         TU1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=xzs+W2GVr3vqn5VAsvGBbm+7+PSMAVoRJubac3ZQX2s=;
        b=Q9aMEyCwFfsUSL4DmCZLrL0OlVc4mKaBVzgHthZwm6mU71+I7ly1rsB9m4/ms5EKz7
         Lkr6no0+6Ofuau4x1l8Dn2EnDB4W/oNs/hDsWokAefSEANCAgwDMVOEfXt9Pf7xsH14w
         MnHj4r+4bWKRapaspbN24ShSsnkcj07wxgr8Z0US6rqF8Y7F4drzFjd5Ax6bpiJAUTdA
         +NJCA32k1N4in7ZVeSTv6V9v4zksJ2iyzhGVQ4LTuG8nyax+H/+L3id9HWpUyu3ugEFx
         fPKCInvi5cuyIKy/MFezn40+SWyefJ8ScJRpq7ChcDbaMZr2DQ2sopEinvrJ4PbOdA69
         49kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id f27si92929ejt.0.2020.05.19.18.37.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 May 2020 18:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id E91E62A26B9
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: lduncan@suse.com,  cleech@redhat.com,  open-iscsi@googlegroups.com,  linux-scsi@vger.kernel.org,  kernel@collabora.com,  Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Organization: Collabora
References: <20200508055954.843165-1-krisman@collabora.com>
	<yq1imgrwgu7.fsf@ca-mkp.ca.oracle.com>
Date: Tue, 19 May 2020 21:37:44 -0400
In-Reply-To: <yq1imgrwgu7.fsf@ca-mkp.ca.oracle.com> (Martin K. Petersen's
	message of "Tue, 19 May 2020 21:12:00 -0400")
Message-ID: <85y2pnmlnb.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

"Martin K. Petersen" <martin.petersen@oracle.com> writes:

> Gabriel,
>
>> iscsi suffers from a deadlock in case a management command submitted
>> via the netlink socket sleeps on an allocation while holding the
>> rx_queue_mutex,
>
> This does not apply to 5.8/scsi-queue. Please resubmit.

Hi Martin,

Apparently it conflicted with my own code coming from -next.  Sorry.  I
will resubmit as soon as I finish testing it.

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85y2pnmlnb.fsf%40collabora.com.
