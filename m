Return-Path: <open-iscsi+bncBCYMVIPVXQMBBMMLQCTAMGQE7EH5D3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B4B76200D
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 19:26:12 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id 006d021491bc7-565b0ec169asf10703568eaf.0
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 10:26:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690305970; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2AZOLvRydOkt8AAxiruBPA0LFLporhp0GMutVy4PF60+6JIzwmiLVk7cfEmoEVmYO
         koK59RwtdzQynKkdiCNKfUM7NfNXF9C14FgxEbOWX13hcjgLO79QcoSE/SihkpOScVVO
         mjDIgcaXNau2ZACTH2dQbtDsW/6RoTClDa8FJ/0CZoscY5gZaER2CCSlgLCDXlVgxjOA
         Cmog7Fl+JOyOD7uG2KuV2w8CiOI7GfX+gczZUiXcZhvSIZGXRI7ugOJZiEBQJEwoAqzC
         EmM414J7uDAxY7p8ZkpsKFvga2F4ldinW1OrCymL+gIkr4mgsi29G8gupsg1qpmEMKe0
         sImQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2BP0oXBRhGaY9c+SYGGKa6Xp2Ax4YJcUnOI3KCHAepY=;
        fh=8nBWZbT6HMHubtHHd8IzkZgCrQUggc0mHHXc9tiMbbQ=;
        b=a4CttYDJqNwq8s1kT6YFG29OwC/BgIAw62OHQsl+gdEzoJXsndv4m53xb8zdw3EJTK
         0F+EOAwYiY8BD9fNqHKrEuvbHGTlPDlHfFrdr3Z9jLyYeQBWBPZW9Wq/G7BZRtzTB2NL
         HVNP0usQZtUzhuXm03wrp5alOiglbAic2zzUSGXzHZHQmOsMcr6RzMhV8SZksGP59WLA
         zZ8brdOyRGdGto1st65keJMPcLHuqnhjNRypIIrU9ndO7YofmIBJhSA/VeWdzM9ihMt0
         Kifnp1Z+QKjk4RmJbxIZlOTZlv2IrpYNG+0FmZwQhMfJ6UQnQ3rbgyxwauQDqe/OAjac
         JYGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NRihcwTj;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690305970; x=1690910770;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2BP0oXBRhGaY9c+SYGGKa6Xp2Ax4YJcUnOI3KCHAepY=;
        b=gxt29dJveKDAtnpAoKhwV+sSoln1ckhIRmSW49gNDqpOfubugrmtpKLw61rikFI61g
         3ityQDx9TosqxAm+taRmBN41h3DIbqYpZDtLocbDkS+lGIGX5iF6UNbLs1aexxLZgcwU
         O4pidOKF8AUFl9rXHan7dJ7YSam2Y+e/U/spY8upAnC8m0QMWRT9OjaoBINPim/ppKc8
         8uoxslVUFpalabK2K2t6Ly7+fhPQafRmuv6j+pTqTzEl6SAD/tmXDmGeRsOT1YHEzqf5
         OPts3hi9toZS2cSXksW9Chsl9DFJZWcgdjAXFgu4IUihB20JFrM19s38ONHgysNdFUt8
         ROSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690305970; x=1690910770;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2BP0oXBRhGaY9c+SYGGKa6Xp2Ax4YJcUnOI3KCHAepY=;
        b=Lk7DpOLxLcGStc2d526oML5n78U1rKetb3vtxC3H09jFmJ+HWv5/2sCvKwwhB7YLaY
         Wlsl07wWo9O0gYwpjKhZpCC1j5xhxMx3Z82T/owfXNvKLTQuoFEiSCKSFcFeEjEa+JCd
         oLbqxjkiMwy9KEMrUNhFLOQoq71ErH5z180XHTg/aPf8v4/RD5H6xpp8Bej3xIzuVNvh
         dXYhdcBpJBSrioE1vdeVso18jL7dwcuuikcY2TywIZmhdaEGWU2JHI4cIFPry44W1D3v
         KVI19xXtDkx64+au3stuV/YXxuYdZeCB28LG3IqV0YKdZhPaDWWcrwGCdttpSIpwAalO
         KUxA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLZYiFW2nMphCKz4bDwm0pSORxTs63SMrp+XL7JbX8qMZ3Avq/B/
	BBp1F3PVHZOYOZazWPUpO0o=
X-Google-Smtp-Source: APBJJlG+UD1tC+c5SgAKlKF2zHS+6M4Y4ZvLY/JVsmx1gUjw5Zf9dmlyv9J6W92/rFV6i3Yc+f52yA==
X-Received: by 2002:a4a:2a4f:0:b0:563:49fd:e772 with SMTP id x15-20020a4a2a4f000000b0056349fde772mr9541296oox.4.1690305970421;
        Tue, 25 Jul 2023 10:26:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:2c56:0:b0:565:9c61:ce9b with SMTP id o83-20020a4a2c56000000b005659c61ce9bls559292ooo.1.-pod-prod-08-us;
 Tue, 25 Jul 2023 10:26:08 -0700 (PDT)
X-Received: by 2002:aca:230c:0:b0:397:f946:1e5 with SMTP id e12-20020aca230c000000b00397f94601e5mr12032028oie.15.1690305968522;
        Tue, 25 Jul 2023 10:26:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690305968; cv=none;
        d=google.com; s=arc-20160816;
        b=urb2tawMQ261SJxZ1pVf5hOan+KK/iuA0/AcKk0e6Xs0opSfzP8TWgpKHrnMgfRW/8
         v3eiARvZFMgMKG+2lbySlE8KceufoRT15sAIYbREmV04OB242LDuHZFTXhbPaI5K0aGW
         j+DetkIIZ8zudrC7a8QNUYolc3cv4o2nx9V52sPrK9yTgIbbIJvfAUTy79GB7DGVstT6
         siMzYNt8QXfk9Y5xqt/tMHKnbTiV8aEgDBlF5M6SeBgWBIqNUEKNV6ZJgDaPuOnKQT2H
         0X62WOzUUWH7qrI8NByf1iUBXNA+e9o7oPBElzXTMn/hcZT9ptJP0U9HvILF/pUgudl2
         +MkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RfdbdDNr9lvtPioh6nTqIGvUGGU1L46kxvnNKym7qno=;
        fh=8nBWZbT6HMHubtHHd8IzkZgCrQUggc0mHHXc9tiMbbQ=;
        b=Ung6pEH9Dz6RuoN43ibVrhBULnI0gzTTRf0FSP6vp4UHAfyv5DRtP1q9STH9m74XPT
         F7Gg77C47bEHD0Zoq2g8o4skqgnSprXTriemP6u9x2kW6zNn6VLXtC8Vqh8weo22/YA2
         Heg5syWbP47Z8MjtYSTLr8j2m1Or0jHj6h0ehOZMvcAMDjzpFgPhtPzUr+wzRUOO78tW
         906xRw9d+OXC3io6NUGO5xUWSlop8DXCG80qDu8hgDAX9gdXmxQURepQQzpA7PO6vayq
         7Zldysliz0F7jXMJKjRpqidL8Q9wzPSP1xWRoerIUojmLYcS0cp9f61r5uUaqoE9Dk1X
         UbRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NRihcwTj;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id m2-20020ad44d42000000b00630039463bcsi827145qvm.6.2023.07.25.10.26.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 10:26:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-283-OHXZMGCyMXOPHFdKEVYPvQ-1; Tue, 25 Jul 2023 13:26:03 -0400
X-MC-Unique: OHXZMGCyMXOPHFdKEVYPvQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A8E51C09040;
	Tue, 25 Jul 2023 17:25:59 +0000 (UTC)
Received: from rhel-developer-toolbox-latest (unknown [10.2.16.250])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39BB1200B66C;
	Tue, 25 Jul 2023 17:25:56 +0000 (UTC)
Date: Tue, 25 Jul 2023 10:25:54 -0700
From: Chris Leech <cleech@redhat.com>
To: Lin Ma <linma@zju.edu.cn>
Cc: lduncan@suse.com, michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, vikas.chaudhary@qlogic.com,
	JBottomley@parallels.com, mchan@broadcom.com, benli@broadcom.com,
	ogerlitz@voltaire.com, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] scsi: iscsi: Add length check for nlattr payload
Message-ID: <ZMAFoszXQ3vwc9It@rhel-developer-toolbox-latest>
References: <20230725024529.428311-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230725024529.428311-1-linma@zju.edu.cn>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NRihcwTj;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Jul 25, 2023 at 10:45:29AM +0800, Lin Ma wrote:
> The current NETLINK_ISCSI netlink parsing loop checks every nlmsg to
> make sure the length is bigger than the sizeof(struct iscsi_uevent) and
> then calls iscsi_if_recv_msg(...).
> 
>   nlh = nlmsg_hdr(skb);
>   if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
>     skb->len < nlh->nlmsg_len) {
>     break;
>   }
>   ...
>   err = iscsi_if_recv_msg(skb, nlh, &group);
> 
> Hence, in iscsi_if_recv_msg, the nlmsg_data can be safely converted to
> iscsi_uevent as the length is already checked.
> 
> However, in the following parsing, the length of nlattr payload is never
> checked before the payload is converted to other data structures in some
> consumers. A bad one for example is function iscsi_set_path(...) who
> converts the payload to type iscsi_path without any checks.

Thank you for doing the code review on this, I think these changes look
good.

Reviewed-by: Chris Leech <cleech@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZMAFoszXQ3vwc9It%40rhel-developer-toolbox-latest.
