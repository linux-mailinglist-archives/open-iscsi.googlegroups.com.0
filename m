Return-Path: <open-iscsi+bncBC6MFJWO34DBBQXFUP6QKGQEJ644VAI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FFF2AB1D3
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Nov 2020 08:41:55 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id w17sf3225834wrp.11
        for <lists+open-iscsi@lfdr.de>; Sun, 08 Nov 2020 23:41:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604907715; cv=pass;
        d=google.com; s=arc-20160816;
        b=cYi/TmcQn/jiZFb/ceSLntG/h9lHI01GbWMVHqUP2r96IHsUZvvxGNjxHAqbb6Lmde
         P8kaCk2klKAN2z6wzuw0lxISi04Ddzwc5Z3ruyfvWcpI82XXbcjm5EBlTsMoIqb480Er
         nShuZFr1CRDuMjk1YEztidjmRxG19ny9ZfSLn9yraTe7Ch73ycX8bvNK9gtTzsHUfnHW
         iH8n+3X1CJCs4vdEJoJTJBt/Oc1bBb8OMdrfxljqnVJWtnfjbUJSRyTw6j3sTxLAkMqI
         ij0YFzShZq5qP5JzzN5yuS8Eb2sQsMY18TPs2iVcW6wVdT6TLROBP6XK1s5rQvKReHcv
         WLhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:from:date:message-id
         :sender:dkim-signature;
        bh=QrOjQLgLh04PVJbKFlC4M9YND7ii1jHkx3rdbqZHtuI=;
        b=GGWf0ILzCZoMXPPFGgutPwdT8iFMdNR5kRNAK7PlAL7htw4jMjo/pg+VB1LcxLmesI
         jFjedoWFHVNPgQRu0lbw4LUKgXa2rXxmmjSK7F6IRkaMYzaUVacqPXY+SumeEd02If/U
         X7Vq20O2GTxLcublht8p52+5LkUJBy/grBZ224ijzZoBmOc6REg1Vz3kXkX0XTrFSHTE
         hxQ1PeOParGzX4LuwEmWikp5fwVbU8MFnMW4gaxqZjFvq8KlCbkR/amdzMv44dPZKzXX
         /YJpcvRtRdXMyj4bvb+7ttJuyQGvMz0ndQwf5INrW3GpImNUeNRZbMbrvgStdmg8qZmJ
         yo8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QrOjQLgLh04PVJbKFlC4M9YND7ii1jHkx3rdbqZHtuI=;
        b=it/riFBdjRTpoXXMRet2ysYAhGuoo2aB578mARoRb2fmz/5SY2uFB/fUdnLYbilcuy
         ESOxa2WX3zf2NFM6SJxvkDEZql2mAIHsB+u1YrYhPRQWJLKGKHlbdgdMlMqFW6FX2NQU
         pnipk5HGkeKaqTHXA5h9h7s6jQpQzTDJvGKXzTyoDFzzUI1qZuqqgL4UN/h4AYmXrUXU
         dJhtUpJa5xIWrwbTaOFP50xF2V1x+B3U2Q2ulAX+a0I4lF50vZwSn8v8vpTRLLUSo/wj
         fMINY9tEYmB1gFPxS86JYs4tqIxc6P5O9jle4EA8VtQO9Xz/QfagsM+vkiAdxtlkQNJI
         b1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QrOjQLgLh04PVJbKFlC4M9YND7ii1jHkx3rdbqZHtuI=;
        b=CV8oMKjewsZrqkU9hrBAs0u5fep1/k3P2dmsnqi9EOWYUWNLltVEBh+WEA8rUei/Ni
         pBTyEdH9VTXh6OD8VhRtEy56u/9JBiVzI1Mcawu5OQuDYs4y6CBJrLHcBB8voz3CMjp8
         sZTfNkbIdSFCbVJg+FA6FLYzbxvJBdur5UDd9f8pUjDWwHlJ+CTv2AgRqTUluxj5VzzJ
         fFQ576GzfIndRavhLiU59b2qd7DvcwVWyik79ViRfax9PkYc3C8zW5bA0/jzSTC9K9tt
         1WGrHj2qPN6mHxz0MVuCp9aHT9G0d9F1OsoiieFjDd/8CgHBimfM9UemJwJS316IGLv+
         uPbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531VhDOZmZrYIA2pD4xaYSv1jFgPc5vhaGbpWHSwKJJmNyC3fc5J
	JH3SI7kzuA7+EAag9KcOduw=
X-Google-Smtp-Source: ABdhPJxHaaJBD0vCQlwUevN7EKZwuxTia1Hj1AyG2KHT/IvCan7pxJSy9FeIObRCg4z8ewphetL8Tg==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr12627741wrv.371.1604907715369;
        Sun, 08 Nov 2020 23:41:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:7e4e:: with SMTP id z75ls3970479wmc.0.canary-gmail; Sun,
 08 Nov 2020 23:41:54 -0800 (PST)
X-Received: by 2002:a7b:c08e:: with SMTP id r14mr13566251wmh.165.1604907714298;
        Sun, 08 Nov 2020 23:41:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604907714; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1Htql8xKOZnIYSvyzIJJ6Dy8tKzIGYxyTpg32YZ6C4E8sF2xj8v+2mFC9CsfBzEPk
         A+9naZnsp9VMKLf50AVJ2jC1BVUp0K8VluCt15ZjHN9l5Ifm8IFcLicVwSFH+1c9nUka
         vv2y/KXdjmHusG1/ZjbD/imepYuLxJ8zLgKZQVO0ceG+UqsAL1gnmkSDNi/THne8hfwo
         zKEEh6CgXIn96lIBCPBnVeV9wqAtI5TlVeNbnceiHP2bPZdLIw8yc/PAyN/WxQvBDkQj
         14TNoLL5zi7tnYz+foiI8TBNw4zDnnxu1I1dLTKAMBpRy1ctk9wqDiSR+9iwThVOfnQF
         agmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:from:date:message-id;
        bh=0N0FZ8GcSM2xj9Mrqpv8KeORArIpMZD/KfAaOl4tQU4=;
        b=fxtE7Lx3iDq7oBtrNxU2sALQDK6rlf7suaAQpcnUS4bEU79vXxC9ZFk5AmAq0fh+16
         sFVv9eICF8WDWe3Zzz5j6Jdozv9kmSKVsLUkdsyvXKKUPkbAxmMOrk5MXmQ/z9L/pn5D
         WTyOXatbOnI5rhGlcg10zsr2eGj4hczcgq+Njw23a2FeBWwwu+hDYDhHBHHZqZXMs0lh
         ZsAj9GOQx0kv4mXT5mFFMYOHbHVhx1oU/WsQ3vnE+0AFugCtURHC1FsMrWDRSlZjpfwY
         W/XiX1w0C8JqVz77YG1RCPevQh9ubBkdiT1W0BRt9ThulaTigculg8rhNJIxNt9AM1V4
         wr7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id c20si281192wmd.2.2020.11.08.23.41.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2020 23:41:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 84B76600004E
	for <open-iscsi@googlegroups.com>; Mon,  9 Nov 2020 08:41:53 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 6FC1E600004D
	for <open-iscsi@googlegroups.com>; Mon,  9 Nov 2020 08:41:53 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Mon, 09 Nov 2020 08:41:53 +0100
Message-Id: <5FA8F2BF020000A10003C905@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Mon, 09 Nov 2020 08:41:51 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH v2] SCSI: libiscsi: fix NOP race condition
References: <20201106193317.16993-1-leeman.duncan@gmail.com>
In-Reply-To: <20201106193317.16993-1-leeman.duncan@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Lee Duncan <leeman.duncan@gmail.com> schrieb am 06.11.2020 um 20:33 in
Nachricht <20201106193317.16993-1-leeman.duncan@gmail.com>:

...
> +/* invalid scsi_task pointer */
> +#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
...

Comment: I prefer 'L' over 'l', because in many fonts 'I', '1' and 'l' look very similar ('I' is not a problem here, however).

Regards,
Ulrich


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5FA8F2BF020000A10003C905%40gwsmtp.uni-regensburg.de.
