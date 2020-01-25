Return-Path: <open-iscsi+bncBDA4VMEL3QNRB475WHYQKGQE7ALLSYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F90B1496FF
	for <lists+open-iscsi@lfdr.de>; Sat, 25 Jan 2020 18:46:28 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id cq10sf852795edb.5
        for <lists+open-iscsi@lfdr.de>; Sat, 25 Jan 2020 09:46:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579974388; cv=pass;
        d=google.com; s=arc-20160816;
        b=t4tBQ6c/QlGtofBFjy+1bzCYaorb7wrZugWNy2SBwC+jTMsfutlmo/+DUQgHTgxHQh
         e2dlJj655alNPg3MY8B1ZuFwYOtIM4I2nmqcyf4x9YB4SZ+1uvoemPDP1BOCQ0/TBZe8
         fbTIbAjkuXSGbfCw4oGhTIfBdhUbFCYUsSvb1OdG910zyU+fAQQ6vS3o9caWGR2k+7JI
         ugEb8M7gHjWZ1RzbqS5DzkVEy/efZVpm7UGNrLsUu2msBlsKFVw+ezzY+k+EDAI4GD17
         pXBd+vgJtvNVtRv0s2nEpBvJXCmmIInFT3y7wnIZDeGzRo3gkggZ9FYSGf7ZQ46uHpdP
         GRfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from:sender:dkim-signature;
        bh=sQOE75ROBPwcguj07exMX0n3bsbwnQKlWMWWOE2TmMY=;
        b=GrWZrDuFxSB5dCbDGx3CUfOaM+xQvkK1TjdF1vWKdJ41IewCX6zvTJRCd0/HmVOMT+
         /yYLd16J2vryOaIuBkMN4HpNIo1lbONCkKTkMEoJuRtFXG9jfi6MrOeLTuvNS/mztWGi
         0sDWjYVwx707UNe37yb/J1mJzNBuWFJm+MztTk6FbSFc93gNNjtekmkjhdV3Jg6l6kgp
         as2Ug2kqDRfJsH7J0ONxN7f5yEsKN6kK/P5D61Gxm59qQd0xXlC+Y2lgLqWj6z8xmbKg
         nHY/VgM09GqY6on4GvNJxBtZVjpCILvieKkBOBm4oWJesbkuggX271iJLfd4xFgL4Y/K
         HHjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQOE75ROBPwcguj07exMX0n3bsbwnQKlWMWWOE2TmMY=;
        b=c8MYOQSMgytAsa9q7KgkvupAB9IuLkgyrtcfINgZoo2saTbELjtLPoVKt5XD3Anhjg
         Sn9ym6G02w1uMAnwU1S6q9bIW+knUhHNKIomkSddTeu93uhiXYte8rUqOFmJJ3uo06Iz
         MCBvL+8L+UWB7D95cVgWngP4yicaY+uoXd1aGWECMVwNQg/V1l55swsmou84EpVviuII
         ITlXnZgMB6x78Zbb2k0bn6K5feCIo54/Kd1bHtxt/4hYn0dgSwx5k3CNQjAv7L0xoYvN
         RIa3B+zxIsUVJX65VKQ8Pwsaj9iY8laeTjtGYw7AlDqiSODD2hZzM/pzq7ZWDGjorgNL
         k4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQOE75ROBPwcguj07exMX0n3bsbwnQKlWMWWOE2TmMY=;
        b=im911JS1AUGSBqJIX4ifdsqLVqRuDZu/jzLNgV4fCTe7EyE1KT1btPR80rK15wocqZ
         HD1xuz1FaR6uVqARTTgv0B3sKOROjaRA0pByVDNELWsDJqRKpWT0taQoqIsvqra3Ad5w
         7pF/8tUFRtdocIUGl9tcbxlBLaoytbuT7uhRNxVSP4dSxTCAjXPpPXQRh/t3Bki5th1l
         Vcz9GuMGgXg2B/Ji6zzCsGZppK94hiOwg6mI7/2gjOweRnvtIFF68LB1shvMHR21XbwW
         9FF15XNZlQlYG4KKePCubBA1p/4vqiG8lb0E8WJVUOy4C/JX16YQ4m/XSz1umuraiTc+
         zoBA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWwof1Whk9m4rI033iG/7riBAKyIk+CXpJEBN1ueUYzYVijRUAr
	I98c1tPYREirlUaYdKPNf5E=
X-Google-Smtp-Source: APXvYqw6+Lnye26oZ0GXC4b0pBrbulg8DbTjviK8QD6iR/ToXiQ42F6G+MAAV0ytmAmOIepvDVbnIQ==
X-Received: by 2002:a17:907:4300:: with SMTP id oa24mr1842725ejb.61.1579974388036;
        Sat, 25 Jan 2020 09:46:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:c0d1:: with SMTP id j17ls1051898edp.4.gmail; Sat, 25 Jan
 2020 09:46:27 -0800 (PST)
X-Received: by 2002:a1c:9a56:: with SMTP id c83mr5171784wme.79.1579974387356;
        Sat, 25 Jan 2020 09:46:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579974387; cv=none;
        d=google.com; s=arc-20160816;
        b=J1XY4iJV0/seTtE3teb7+wmpx3h8moRCGtujTFHK2gtPXbvblnAs0AOi7O0o5/WriG
         gjWllTYBs4hIyUuP1VZHXrha/ARtfByG12QTfGLn6AaQ2Jc2J3mKd6rQIhD5eZQA+E/3
         04k4td5eN0gkLAiymYZaogE1FalGZJyoUoQN3suHGKc1BrnhDaTyMe1KDcG3nET6cgcP
         rno1YbaBsB+YbUZoF8q4G+tI7PQqUV8VO36LWvD5nXQDs2FiUnBMSnaF4bCvs0W9II9Y
         TfN3wODmUC1AgJ+Zvcj42R5a0lOGSPRqgOYvnJGogGXcbLTqhXuk66mST9LqXJ7oHKON
         7GVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:subject:cc:to:from;
        bh=y56Ns/kveUKRg0nQflKJWHO4D/YblBF1AD5n+e07NE4=;
        b=vPZNSlHo4VU1LGMWx0Z4mTFYvVB5KEvF2fBXfBZS4LzD6f04YRHwVWjfweLnriZ4HR
         mXGQvc+io7L2nAgyUtUadhik+LUEuDWJZDLsCIU+A6//QlSZakXUkpS348A52dQQj3xr
         iruAwQzSruwoCTCj0RhIRd2nEGSo7AmfJqSjVp/sz/iZIzpatQLG/qFdMR2fIWo2jf9m
         OUo5I/TPVmLgsxbCU6Qq5XJQa3MVHOKPLdADhitCgzLF0ZuUbb2MbmeoT37wwtgH1UEX
         INttsdHncW/hzuCCMWFBWrKOxWncVHmhn9p+rFZ+aiAbsl+gZum4vNbUfulrhRdFuGS0
         3+wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id d191si68304wmd.2.2020.01.25.09.46.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 25 Jan 2020 09:46:27 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id ACB4528EBDA
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Lee Duncan <leeman.duncan@gmail.com>
Cc: open-iscsi <open-iscsi@googlegroups.com>,  Lee Duncan <lduncan@suse.com>,  martin.petersen@oracle.com,  linux-scsi@vger.kernel.org,  Bharath Ravi <rbharath@google.com>,  kernel@collabora.com,  Michael Christie <mchristi@redhat.com>,  Bart Van Assche <bvanassche@acm.org>,  Dave Clausen <dclausen@google.com>,  Nick Black <nlb@google.com>,  Vaibhav Nagarnaik <vnagarnaik@google.com>,  Anatol Pomazau <anatol@google.com>,  Tahsin Erdogan <tahsin@google.com>,  Frank Mayhar <fmayhar@google.com>,  Junho Ryu <jayr@google.com>,  Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH RESEND v4] iscsi: Perform connection failure entirely in kernel space
Organization: Collabora
References: <20200125061925.191601-1-krisman@collabora.com>
	<F29720C3-86AC-407A-8255-9186E3AE0676@gmail.com>
Date: Sat, 25 Jan 2020 12:46:23 -0500
In-Reply-To: <F29720C3-86AC-407A-8255-9186E3AE0676@gmail.com> (Lee Duncan's
	message of "Sat, 25 Jan 2020 09:22:02 -0800")
Message-ID: <8536c3ctu8.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Lee Duncan <leeman.duncan@gmail.com> writes:

> I=E2=80=99m sorry if it didn=E2=80=99t get through, but I sent a Reviewed=
-by update and the end of last week.
>
> I looked over the updates, and I said that they look good to me, and I sa=
id please re-add my:
>
> Reviewed-by: Lee Duncan <lduncan@suse.com <mailto:lduncan@suse.com>>

Hey,

Thank you very much for the quick response!  I checked here again and I did=
n't
get the previous email, but I see it made into the ML archive, so my apolog=
ies,
it must be something bad on my (or my employer's) setup.

Thanks,

--=20
Gabriel Krisman Bertazi

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/8536c3ctu8.fsf%40collabora.com.
