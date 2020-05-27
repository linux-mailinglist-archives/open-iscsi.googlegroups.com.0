Return-Path: <open-iscsi+bncBDA4VMEL3QNRBFU6W73AKGQEVJ7UGPI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DF81E3583
	for <lists+open-iscsi@lfdr.de>; Wed, 27 May 2020 04:23:18 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id z8sf10546029wrp.7
        for <lists+open-iscsi@lfdr.de>; Tue, 26 May 2020 19:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590546198; cv=pass;
        d=google.com; s=arc-20160816;
        b=qSQZdsEk/abw0GSCgBsYtgeHFpUD+vvnGPs7Og+z8YaOlJOGQINLfFbdL+2ZmgrJnE
         yiLU04Ka07VW30Z6TnZxspX4XclRgnzo4689anBvFTtyG4LJIWL6VQ7Z5nSUsjGRq5F9
         znIlWexRiGiezr22SmUt09a2hGWBXEnrIP3J/f6/5YLuYsFrowpI7MH5eRA9L0XYcI3g
         c6hevIjtOdJgm/veeVmA+675lio636iKsfMmz78n8T0ePDuDlvx4MrzF0omenrjGzNSj
         itzFstMX/yPQO2O13AHpgRSfrq1hzu+rh6ujy6yLGkhDoXgd92iDmA0kXUNJ+0kip4jE
         UaOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=QC/30Kw4dVEh3a1KJnCvKcPArEG365L4i1Za6nXjEf4=;
        b=0I1ojNZE/l9CocGTLI8SR2Wrk+yAzDu7dysJoHc5TokpMqXeuZGm1s5Yoy1jZ499mx
         G1PKQYJ7JSOQ48BZoaKjoMnIPqfaQZcbILIfzJ/FkwJUKPiNYAl3hQbzjcFZydtDZrb7
         YeqIzEXj7IT2W+ka0RnudWYCYjI2zCa7UE6ongTXSiGGesUFhiYsa1HeR7qfJnN0Uf/x
         GEx5ELPXYFAu02/m/w7ta7/XaOo9rQGSD0XAmF60bReD+SwOUOKH6DyXqLf870VhjWY8
         Z0p/Pl32TvEzLwczy+Yzd9YTAPR+i16k4RK5QDltyAhDV0/QHB8a8MHsy0/0SQplhTdU
         txoQ==
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
        bh=QC/30Kw4dVEh3a1KJnCvKcPArEG365L4i1Za6nXjEf4=;
        b=Gr+ONFxCctFVezgePFugteAeQt2ksaK3IXqIlJa2LlXz9OB+xY2TCUv1ngbWBoekev
         p9Cq0f3L2KOxPls4GLH/5Xp1jAyKX9+iusiTTOowuUwnlJRaKXi+4RiIc6yHcQoJ4+CC
         4F71aB0aApruVck96jnVSPlynKmVDHnYvIdJAvE59iYFuDQnBgbOCWMujlhVCEHSUx0M
         rlE2iWdvCIgC+LP4Pye8mivbTXsgHVIlW1erme9vrGcMGb8337QoVXpN+MMrfMV5LYY3
         kFWygcVlCGTtckyHNOV9U36NbeXzNkqhResXswImY/a/n/sgYPGaknQuwLgFX7AUol+l
         Y8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QC/30Kw4dVEh3a1KJnCvKcPArEG365L4i1Za6nXjEf4=;
        b=a4vk/M9p14O0xUpol7yqbbymumiquASPtllqj3vVbnq9pHAVfBn55BwwYnQguYbMtj
         gIPmdHUtsNHVXqfkX2BRSILSSVPOYM/KltKyzwS7qaU1yOv+IjJf+vFAeJG+HOB20ZDe
         rPrcR+u0akxWjfanmHrOua06JeyMjZntoLtcpqGAUQzAZ6oO6UKp18Mo6/rScqbOoqLN
         hYUB9RrfCC2ymF+jKv1xHDxHSOATGL3/EhvT2dzz8fGXrRwGfaSyBJyylzCKHFuZSC/4
         7/HPD+N9lucfyPl3tKhqx+wk/QLTFOv4t/VGikqMI1rr4VcE5WUoVgNYSQnY7zIMfPKa
         9EGg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Dlp6UPONd4rE4m3Tc5utUCmBZBLiF8sHBXWxG1VciT40RKb6N
	w/kxFY2udo9Rs3iocSu1lNs=
X-Google-Smtp-Source: ABdhPJy7QzTSWRr5zk0+i6GRH1gjZ/JtuiMJi84Ajy3ED61QJwVmPcLe5FbgjoSQYiywjkfl1M/2Tw==
X-Received: by 2002:a1c:bd56:: with SMTP id n83mr1975170wmf.45.1590546198576;
        Tue, 26 May 2020 19:23:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:9e15:: with SMTP id h21ls643109wme.0.canary-gmail; Tue,
 26 May 2020 19:23:18 -0700 (PDT)
X-Received: by 2002:a1c:2b46:: with SMTP id r67mr2033452wmr.160.1590546198083;
        Tue, 26 May 2020 19:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590546198; cv=none;
        d=google.com; s=arc-20160816;
        b=NvkX+MSDHAToiXWzmwT2J/HQFTewSnAjoPcEZA6upljv5XrqBg82xG7eIoYUmDdVwa
         X/Zo17JB35SMyx9Xa1B3CNK3bBmRWDB8WEcRDo+RAy7xMxcAv7Jov0TLzpOCtGGfCjJu
         9Db8GK1vec55jRc7Su3rOqbRuma/5YVYdh00ou3aIxDw7ETWVnc3/vuQO99KJH9sFKNT
         F2xShE8vcQtYOAWX174T0VdD+ISZtAe9nP3ysKVGLL/rcBArQsWMazRSCnYNMbB3CptU
         YVol4O7ys3c2p3XF9S8Bz9HjOGUQ9K0oLhIKaQxxs43Ev+QGnNrgjlk675nfu2QDd/h+
         cpmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=tTvXIMVNRTkZGfO1Yp6sOsj0GiPRoWsm9un8a0xy0NM=;
        b=V4kzBSdR6j3kgra95ZW7JNPjDflOxxT8ASXO+OpJGxPflGwWHTVNtk100hX3qu/Ze/
         LJF+PpR3LnPnRzHFaLXcQeKKuBaIlN83SIeYvw9/hK+rnpCm4Zu7WVNxlYyymt3VV9Rl
         EVcAQ8U3Tec+wwx8nETDguN5+IExtD9ciO8ZOD85O2Epol4jx//2vBi0EgAFcgmWoHqT
         D995WVdVDzp2pQimflDsn14rNRytcSe/HA2tug+O+Key980GumCd/r5vlBcRqbbXB5h7
         32Iauji0YDOJnyvJrGv9xOler39poyGgGEUz0qOJWY5KInDutjzoz+VFGY0Zz1cvqZKY
         6mdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id s137si61550wme.2.2020.05.26.19.23.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 May 2020 19:23:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 73A582A0285
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org,  open-iscsi@googlegroups.com,  Khazhismel Kumykov <khazhy@google.com>,  cleech@redhat.com,  lduncan@suse.com,  kernel@collabora.com
Subject: Re: [PATCH v2] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Organization: Collabora
References: <20200520022959.1912856-1-krisman@collabora.com>
	<159054550935.12032.12429490681572583579.b4-ty@oracle.com>
Date: Tue, 26 May 2020 22:23:13 -0400
In-Reply-To: <159054550935.12032.12429490681572583579.b4-ty@oracle.com>
	(Martin K. Petersen's message of "Tue, 26 May 2020 22:12:58 -0400")
Message-ID: <85imgiyv3i.fsf@collabora.com>
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

> On Tue, 19 May 2020 22:29:59 -0400, Gabriel Krisman Bertazi wrote:
>
>> iscsi suffers from a deadlock in case a management command submitted via
>> the netlink socket sleeps on an allocation while holding the
>> rx_queue_mutex, if that allocation causes a memory reclaim that
>> writebacks to a failed iscsi device.  Then, the recovery procedure can
>> never make progress to recover the failed disk or abort outstanding IO
>> operations to complete the reclaim (since rx_queue_mutex is locked),
>> thus locking the system.
>> 
>> [...]
>
> Applied to 5.8/scsi-queue, thanks!
>
> [1/1] scsi: iscsi: Fix deadlock on recovery path during GFP_IO reclaim
>       https://git.kernel.org/mkp/scsi/c/7e7cd796f277

Thanks, Martin!

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85imgiyv3i.fsf%40collabora.com.
