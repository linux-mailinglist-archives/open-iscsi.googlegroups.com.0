Return-Path: <open-iscsi+bncBCRKJ2M45MFBBDGXVCKQMGQE76AXQTY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C99D254D13D
	for <lists+open-iscsi@lfdr.de>; Wed, 15 Jun 2022 20:57:18 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id l12-20020a056512110c00b0047961681d22sf6365245lfg.9
        for <lists+open-iscsi@lfdr.de>; Wed, 15 Jun 2022 11:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655319438; cv=pass;
        d=google.com; s=arc-20160816;
        b=abD9KFvKUzl0bfB1hqBCPrC9d2oMpYI0VBqKqIl0gCYw6vcE6PxFbaArAVWtONuxMT
         EDOBYa6/za0Cw/SG/4aPrEmkrF88hR525u9uP+ijbEDXVh2NIC8dB+k1r8fOhDdsl6Eu
         sc60AfJOaT4NKHD4Y+orAmHFlMG0t9AX2JR0RpOsVynMn3YNqLmv3vSlFXSRcKE4M7VB
         B4FYvZs87sAvdaf6i7n8nvkS4E+2kyCKHPbih87O7d0yY9q3RMmAPzB9GR3tgVv1nWrT
         5OJZ3EDjxb5N3NGERNX2nLHWMrWA7Jtp/XzPZrVEvcjTcBNCYz3uPJTJcmwd5jozPblZ
         QbAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hyhGDtYHzaswTl+3pr7ivPF8q3fA005dr2d1pPKBxTM=;
        b=R0vPM++fwgFbWOv0TEG1vX2JiNksxHLY9fUz3uCaxqnoRVrv47I3sY/mwHwVkTwp3z
         JbHxp83R7mN6dxnAHw1hDrOqRZAy2SwdwuruqLrhTJlFRxQQ/UPT2aw26mLnE00Z4u2V
         b2rAB5jFiKXky2kpFSAPxtIeychYevsEXqGuay8vcEc/79YwNN8+XSh/OyUc0fz/pBqS
         YVQQpbbSWT+Ke1ZpIIl1y3bs/XYmnsKg5YdVgbq4VVaazwwGPxNEKSuEB0SF+UW8YGej
         UGZvV25HuADROma3UKRbFEAoxxrIkhipQpWCbuindCVV9jB8Vp7E+0RykMUpLFl0IiJy
         Py0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gBLSouUF;
       spf=pass (google.com: domain of ajhutchin@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ajhutchin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hyhGDtYHzaswTl+3pr7ivPF8q3fA005dr2d1pPKBxTM=;
        b=JwxOqhbMyImHQE3VwVNOX8AULaQD+cxUxHZndcIO8A9dvUJJNxBnjxQC4z6us76C+n
         qrdEcNpnPUwiFSMho9o9KO1G6nL2Ew1s/oM+EeBFsIQ9TUIIjx2elyYTyM7DwNWpiP+I
         4Aa8k/a6sFnST9tHgDdQuEbaNdKn1xMa3gWYKoR3NZ2TCjDHOzumAbWJzqjV0Bq6S8k9
         1d4qxJXHfvrZfp53Qy5KK4Wz18MX7nQozibzpWafevE6Jv+Ikp48PMXw+ZD1uGkpgLMX
         n0WeuxAlyv/cUlvF0prf4y/fiKP3AvePZIe2NESvR1eRZslgFYsZkcsDErpHYGcxUUKZ
         STiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyhGDtYHzaswTl+3pr7ivPF8q3fA005dr2d1pPKBxTM=;
        b=XCUTbX8D2av2GvWn97Wewu6VKG7xkr1/J3O0kLESryBen4SQ8tfx5gEr7C9D/aDO8H
         HeOKmK8Xn0ZgXFKUZgdDpERgLaE8ExR5Al3Ql5R3uFomiSbhsJcc/Io8/bx5Ldsl7Rud
         XRb5kVOoX6FzuX2NAjMC2v6x8Ps1u0wA99qKPcbbXx9HByot2Nb9MboTa3UIhokil503
         DRSXdvuIn+SVsC9NHlHfKENVcJbjdCGZ6S1pEFE0oGhCxhqa9VcwtJQVte5jrXnua8sX
         ftnkAEgGDogMaASGtRH3b6lrFBa7qC61JPrzU4ZqjQnnU4b2bsZkqdI4Kgq58Bk/rA0w
         WcDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyhGDtYHzaswTl+3pr7ivPF8q3fA005dr2d1pPKBxTM=;
        b=TjjrZRpTJLPMGTDexQ9FErTfMtdPFmC/lG4P4lzfIMPqwqAxGa5cDk9fL4UO4orTw1
         gyXUhWocr414klwPXmhwlTq/8zZtsoNWzimEobWKgJmVpJHBfGvnSgk9Of+zuB7hYYtH
         KIKLXp3dT+YrB569OFpFLaue9yycUtzeEJZMTx4oYIkPZkh02O5W6QX+fu0qngkHy9oA
         0dhtV+/KQHzQevWL5tp8IFw9o/dmb0/BA1PJxSTg+Jlw5XJEwbJzPoW3vkyMlRxzbpqH
         Y8NoiQ4oJ6nCYkHqTpsOMRxOfla4aa3jlLz7+mlSiqTgfGuW4qWYlStQNluG7qmJqaix
         jz+w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora/apZ79tcXvfxyMyeiifmV3M5LTOBPrdCJKUHr2W+s9fn5OPbIo
	jfPscNHXwQZx69uh67xtVoo=
X-Google-Smtp-Source: AGRyM1sPmU32ojb0ykm8O7H/ok7JUuWZyO7dBvw6czQ/2AvOBhByrU2Ky6wJ7vv/pP9zzgmR7Q+jhQ==
X-Received: by 2002:a2e:9088:0:b0:259:9146:d2d0 with SMTP id l8-20020a2e9088000000b002599146d2d0mr633785ljg.474.1655319438220;
        Wed, 15 Jun 2022 11:57:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:1693:b0:448:3742:2320 with SMTP id
 bu19-20020a056512169300b0044837422320ls378943lfb.1.gmail; Wed, 15 Jun 2022
 11:57:15 -0700 (PDT)
X-Received: by 2002:ac2:4c0e:0:b0:479:168e:74ce with SMTP id t14-20020ac24c0e000000b00479168e74cemr542257lfq.54.1655319435355;
        Wed, 15 Jun 2022 11:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655319435; cv=none;
        d=google.com; s=arc-20160816;
        b=GY6v6v7hObO5BMC4fyfpO8YQ98rCds3UpzSg742W5/2tP3kV2O7rjCdXyISJ6SDNc8
         kOpC3MvsRMuNxKOaG5QP4LZ4Gf50olSYcr/gryNJd6Kp/Rd12wRp5czIRnY9Ae6Eu0BT
         A7K8XcFfJ3UD9So9GBC4vTaGf2EqhAK8lhTmPDTW95DrQMGbcagnA/DhtqS1vP49fHYc
         oJ9TTksdyekaeLTb3xBd/546VHxIQS5Pjn3bGQjXLpYlmtoioI1WUtjPf/yT5P1xad9X
         I4i2Df6U7wXsDywK+SdIIMt4ymIGC7awwnd1DrwddA5y/2yEOwERHw9unBmKoZeVDBms
         GcTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IA/Nfnvsktst34eWNe42G7OMd7iCZuXBerNp7A17zbY=;
        b=iuWe8hz6SvP7wlZzgp2733NpKoOTA7aKznS8kJv7N+2c/SoaSuf+IcuxsQ6S7mjQrd
         WZ/BuVQYRYuWXDHIt6W+fGS5WviY01Bx4xNPdLhkEHcT71qxb1OYEYLGZZpJjo7YRQgu
         EtKAeL1dHAUETwl6rcLvpH3sqXo14VrIvs2kdnNmf/to5Yy3qBGO+wznfnKy1eMBpwUZ
         uDZTGTuVD6v1Dvslv2M8LqaoHduO7O/94Ex1bvetx1QxgST8RUicK+nXw1W4uj7rA0d6
         anoBcLCW37V8QsxnNt8QbHQL02TdEpRjlEwcszjjWHyHZlR26x/rTp2bdC/PBiy3X+l/
         CJxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gBLSouUF;
       spf=pass (google.com: domain of ajhutchin@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ajhutchin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id m24-20020a197118000000b00479071ed831si497479lfc.11.2022.06.15.11.57.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 11:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ajhutchin@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id p18so20357151lfr.1
        for <open-iscsi@googlegroups.com>; Wed, 15 Jun 2022 11:57:15 -0700 (PDT)
X-Received: by 2002:a05:6512:340c:b0:479:7236:64b3 with SMTP id
 i12-20020a056512340c00b00479723664b3mr496763lfr.653.1655319434590; Wed, 15
 Jun 2022 11:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220607131953.11584-1-d.bogdanov@yadro.com> <237bed01-819a-55be-5163-274fac3b61e6@oracle.com>
In-Reply-To: <237bed01-819a-55be-5163-274fac3b61e6@oracle.com>
From: Adam Hutchinson <ajhutchin@gmail.com>
Date: Wed, 15 Jun 2022 14:57:03 -0400
Message-ID: <CAFU8FUgwMX_d85OG+qC+qTX-NpFiSVkwBtradzAmeJW-3PCmEQ@mail.gmail.com>
Subject: Re: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
To: open-iscsi@googlegroups.com
Cc: Dmitry Bogdanov <d.bogdanov@yadro.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org, linux@yadro.com, 
	Konstantin Shelekhin <k.shelekhin@yadro.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ajhutchin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=gBLSouUF;       spf=pass
 (google.com: domain of ajhutchin@gmail.com designates 2a00:1450:4864:20::12b
 as permitted sender) smtp.mailfrom=ajhutchin@gmail.com;       dmarc=pass
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

Is there any reason not to use time as an indicator that pending R2Ts
need to be processed?  Could R2Ts be tagged with a timestamp when
received and only given priority over new commands if the age of the
R2T at the head exceeds some configurable limit? This would guarantee
R2T will eventually be serviced even if the block layer doesn't reduce
the submission rate of new commands, it wouldn't remove the
performance benefits of the current algorithm which gives priority to
new commands and it would be a relatively simple solution.  A
threshold of 0 could indicate that R2Ts should always be given
priority over new commands. Just a thought..

Regards,
Adam

On Wed, Jun 15, 2022 at 11:37 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
> > In function iscsi_data_xmit (TX worker) there is walking through the
> > queue of new SCSI commands that is replenished in parallell. And only
> > after that queue got emptied the function will start sending pending
> > DataOut PDUs. That lead to DataOut timer time out on target side and
> > to connection reinstatment.
> >
> > This patch swaps walking through the new commands queue and the pending
> > DataOut queue. To make a preference to ongoing commands over new ones.
> >
> > Reviewed-by: Konstantin Shelekhin <k.shelekhin@yadro.com>
> > Signed-off-by: Dmitry Bogdanov <d.bogdanov@yadro.com>
>
> Let's do this patch. I've tried so many combos of implementations and
> they all have different perf gains or losses with different workloads.
> I've already been going back and forth with myself for over a year
> (the link for my patch in the other mail was version N) and I don't
> think a common solution is going to happen.
>
> You patch fixes the bug, and I've found a workaround for my issue
> where I tweak the queue depth, so I think we will be ok.
>
> Reviewed-by: Mike Christie <michael.christie@oracle.com>
>
> --
> You received this message because you are subscribed to the Google Groups "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/237bed01-819a-55be-5163-274fac3b61e6%40oracle.com.



-- 
"Things turn out best for the people who make the best out of the way
things turn out." - Art Linkletter

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAFU8FUgwMX_d85OG%2BqC%2BqTX-NpFiSVkwBtradzAmeJW-3PCmEQ%40mail.gmail.com.
