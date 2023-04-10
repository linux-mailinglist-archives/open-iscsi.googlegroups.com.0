Return-Path: <open-iscsi+bncBCYMVIPVXQMBBVF62GQQMGQE3OPXLDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E61FF6DCB60
	for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 21:11:18 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id l26-20020a05600c1d1a00b003edf85f6bb1sf4322474wms.3
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 12:11:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681153878; cv=pass;
        d=google.com; s=arc-20160816;
        b=i++Ym68fkBC1IynhHgSs46FCWKlJowguXbIkBPyLYsp+VMiLaacfhuPyDmM1SK7Wxx
         UsZkNxYq1BvoqhoSiex6bOmHovELy14yX4EGK79ttiCiDJNpegeUJf5dsT0RDI+/Y3mS
         KHBvveFAOiTC1nEXwuhs8gRemDYDsRbT9yvE1b7FBXfZM4rF06S9m7Yxkrb9KyzN0nX1
         m9DGb+VYabCbpWh+ShLJMrT08kkQK/Lj1A6MEwSgsgqT5t3a5spPODYFScF6prL0azxI
         5/gd34b0hUSMK7miSQOIRDZh9yZTcm0GXSrftS8Q1esDBme5jbpvjQXQatelt6C831o6
         lu0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=5bCi1XHjef3U2gQQjFoGXYLzFHO436HcjUcIHgx9sDQ=;
        b=Ez38Oz2B1L2kCD6sRo0nl0u35t2E846cA3Y2GK9Wit5ePjRpFRyCx1GKzyuktZ1EXI
         cHK8crNKW6LIboZZH1efGcd2DONSdi7pnnuz4e8rx4i60oMz8m8ZLBINXvUjHFOjIxHi
         v3FDmMNK2C/+z3X+c0MIJpkPj+s/uPewAtnz9986HI6zgMErDOTb6UchdSpaLhOfmtUy
         Tapw0JuRv0bLcWVj1/evPuQuSQAzj7htV+Ce1RQQtnKqwarq/Hpp7aSA6JuZdYoVzrS9
         /6Py5T+qsVcs2HTLbJHqO5dCa+EzwiMhC1I5LxEkg5jDUYv0vy5jaBtxx+XvWR0fwy9A
         3fPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="OUX/otYV";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681153878;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5bCi1XHjef3U2gQQjFoGXYLzFHO436HcjUcIHgx9sDQ=;
        b=fvl/8jIG7/8uWeGKHF1DIdEjZ8avoDcPBW7MaQkeJ1hNzBRlKWUx8vbVioM83D4qGe
         ijYqmGqViXCMgopRe6EDvGQ+FsDex9e/ZxC4NgYS2V/ShigD9eP2sqV1mpMne0y9EGhX
         nXrVle/iBFpKatVeWAegR8NVL2h7e0c3aGVtArUaNqsZ/ljSiA5HDULwv+HtKFhgESV7
         zrRFooj8X7RMQoVdomUGoMRHcv5kHspQEx/6mpK7NxY7xw50IlQMC/5YnyFpsvpOldvJ
         lHOWAgT3HWK5LvWEyG5O/kW4TBl/EBiBcETvV0XLvQaP1sDcbpRpANyRe36ulws+7TnI
         BrxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681153878;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bCi1XHjef3U2gQQjFoGXYLzFHO436HcjUcIHgx9sDQ=;
        b=NInQrZM2LFJ3J3y3kFQ4myJskFVNtZMTENZPsPTUAHVxeDcJ+sL0nyq7Pu/7sO1o9S
         ln4HbR2bIxSKDGyCZmUtVbp8eFYs74uBbgj29dUjd+c84GfNSHSHCbLlpjdDEHmEiO3r
         WZVbY8vFN9eE7e+c67QQ+fPdItZ7wmvWQ2OpOOxNmoUx25ARqIXV1miwx1Q2nSSktGCa
         VpB3dUglxKF6fK2oMxHvpyN5MlWUTJxXaxLANhGHUCqQalbDYtypxe5QBofCObQtOK6s
         hIgHY+B8/pPzXGoeKuihdOg3dbdTnNd9oS2KVwN6OfjdbtVzZvUWUdRpINB4meKlAOcH
         pkZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9fgLVHM2ZIhnwmNPyB9mzuMrC+0x9XydTLp3q2EccVxln6UNGAl
	ZTTpmuyT/3Fm8cD9Uw6KkTs=
X-Google-Smtp-Source: AKy350akMt51uNOQojjJXbOrv7QfWGs0X/i++FuLbJSzgR1Tl81zNO5meLIvinmZ2JGcDhUbQKXxlw==
X-Received: by 2002:a7b:c405:0:b0:3ed:5c86:d828 with SMTP id k5-20020a7bc405000000b003ed5c86d828mr2341189wmi.6.1681153878614;
        Mon, 10 Apr 2023 12:11:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:1f11:b0:2c5:5262:2e24 with SMTP id
 bv17-20020a0560001f1100b002c552622e24ls17586809wrb.2.-pod-prod-gmail; Mon, 10
 Apr 2023 12:11:15 -0700 (PDT)
X-Received: by 2002:adf:dbc4:0:b0:2ce:ae5b:27a2 with SMTP id e4-20020adfdbc4000000b002ceae5b27a2mr6565040wrj.17.1681153875686;
        Mon, 10 Apr 2023 12:11:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681153875; cv=none;
        d=google.com; s=arc-20160816;
        b=SZ8cQpezGCJTAHNp76QXbPlBNuEbS39LCga1LoSNhZzCbFJOHNaBLTQwRent1pT1aP
         ZAeOVz9/b5N6Eye5XKme0yI7ULfWyNYgLdZlxnEC28j3wI8lcp+RzlwZI8jR13n6ZN+g
         zdWYyxLvi4IVe5unCNZD12xFa4Mo+INpckkbxImp0t0ltfQWBkVvWVLiqQtNMrb6/8MV
         wn2VbujZtDJyKibokJVvaGzJ8ROyriNHVjaHGaDq3zy3XdI4NOreYXrilv0dxu8QoToO
         FpEw2ZLbjh1SE4EtXtaM6ULhhB0wrAQEgIpWtHQGUiBn8nZIO2Z8BS0B18wAI5fI60Oa
         XttQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=chUNGll3iD9tAjlYwwUH5JOb6AFG0zsrnWXAILdp4m0=;
        b=BNHStnsoJkH0SujPxizCy8vxyPF6os3/6OcMxY2vVSn3FMgsR4PXr+dxW44mTvCOzw
         LKR3L99CAq1KypyYWVaPujhR8WDd9J/wdmIV83KvKVCo88dofbT6UbRlVuXtcnvjQrel
         vXNEDAPCJxqmSUVJ+26S9uFJ9H2opZdwIKUTbc/g7A/M6aCbSk2QVwcxoKAjDzjJlxiY
         ZrktE9utf8yyELrO3DS6oUEWD7QgLnZhBfyjNrQMj89wT22DBSz/6HZFU94cVAUZ538U
         ULI7a3RirbSeP6YRUxDNgdul60yzXeCtXliOVwihfB8A6on1GWIjt22/nQRa6nkgHmfV
         8fug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="OUX/otYV";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id bt14-20020a056000080e00b002c59e9a3f66si531155wrb.2.2023.04.10.12.11.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 12:11:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-ewEqmW_xMqSYh-jwfZmg7Q-1; Mon, 10 Apr 2023 15:11:11 -0400
X-MC-Unique: ewEqmW_xMqSYh-jwfZmg7Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E76C9185A794;
	Mon, 10 Apr 2023 19:11:10 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4AC6640C20FA;
	Mon, 10 Apr 2023 19:11:10 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	Hannes Reinecke <hare@suse.de>,
	Lee Duncan <leeman.duncan@gmail.com>,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: Re: [RFC PATCH 4/9] iscsi: make all iSCSI netlink multicast namespace aware
Date: Mon, 10 Apr 2023 12:10:31 -0700
Message-Id: <20230410191033.1069293-1-cleech@redhat.com>
In-Reply-To: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="OUX/otYV";
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

> As discussed with Lee: you should tear down sessions related to this
> namespace from the pernet ->exit callback, otherwise you end up with
> session which can no longer been reached as the netlink socket is
> gone.

These two follow on changes handle removing active sesions when the
namespace exits. Tested with iscsi_tcp and seems to be working for me.

Chris Leech (2):
  iscsi: make session and connection lists per-net
  iscsi: force destroy sesions when a network namespace exits

 drivers/scsi/scsi_transport_iscsi.c | 122 ++++++++++++++++++----------
 1 file changed, 79 insertions(+), 43 deletions(-)

-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230410191033.1069293-1-cleech%40redhat.com.
